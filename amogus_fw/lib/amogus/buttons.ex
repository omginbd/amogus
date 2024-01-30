defmodule Amogus.Buttons do
  use GenServer

  alias Circuits.GPIO

  require Logger

  @button_pin 14

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, opts, name: __MODULE__)
  end

  def get_value() do
    GenServer.call(__MODULE__, :get_value)
  end

  @impl GenServer
  def init(_opts) do
    {:ok, %{button: nil}, {:continue, :init}}
  end

  @impl GenServer
  def handle_continue(:init, state) do
    {:ok, button} = GPIO.open(@button_pin, :input, pull_mode: :pullup)
    :ok = GPIO.set_interrupts(button, :both)
    {:noreply, %{state | button: button}}
  end

  @impl GenServer
  def handle_call(:get_value, _from, state) do
    inverted_value = GPIO.read(state.button)
    value = 1 - inverted_value
    {:ok, value, state}
  end

  @impl GenServer
  def handle_info({:circuits_gpio, pin, _timestamp, inverted_value}, state)
      when pin == @button_pin do
    value = 1 - inverted_value
    action = if value != 0, do: :pressed, else: :released

    Logger.info("button pressed")
    Logger.info(inspect({pin, inverted_value}))

    if action === :pressed do
      AmogusUiWeb.Endpoint.broadcast("Elixir.AmogusUiWeb.GameLive.Index", "emergency", [])
    end

    {:noreply, state}
  end
end
