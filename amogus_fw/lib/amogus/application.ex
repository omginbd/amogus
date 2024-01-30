defmodule Amogus.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Amogus.Supervisor]

    children =
      [
        # Children for all targets
        # Starts a worker by calling: Amogus.Worker.start_link(arg)
        # {Amogus.Worker, arg},
        # {ScrollHat.Display, []},
        # {ScrollHat.Buttons, handler: {__MODULE__, :button_press, []}}
        {Amogus.Buttons, []}
      ] ++ children(target())

    # Task.start(fn ->
    #   :timer.sleep(5000)

    #   ip =
    #     :inet.getifaddrs()
    #     |> elem(1)
    #     |> Map.new()
    #     |> Map.get(~c"wlan0")
    #     |> Keyword.get(:addr)
    #     |> Tuple.to_list()
    #     |> Enum.join(".")

    #   ip = "#{ip}  "

    #   ScrollHat.Display.marquee(ip, 100)
    #   ScrollHat.Display.set_brightness(1)
    # end)

    Supervisor.start_link(children, opts)
  end

  # %ScrollHat.Buttons.Event{action: :pressed, name: :a, value: 1, timestamp: 95510405880}
  # def button_press(%ScrollHat.Buttons.Event{action: :pressed, name: :a} = event) do
  #   AmogusUiWeb.Endpoint.broadcast("Elixir.AmogusUiWeb.GameLive.Index", "report", [])
  # end

  # def button_press(%ScrollHat.Buttons.Event{action: :pressed} = event) do
  #   AmogusUiWeb.Endpoint.broadcast("Elixir.AmogusUiWeb.GameLive.Index", "emergency", [])
  # end

  # def button_press(_), do: :ok

  # List all child processes to be supervised
  def children(:host) do
    [
      # Children that only run on the host
      # Starts a worker by calling: Amogus.Worker.start_link(arg)
      # {Amogus.Worker, arg},
    ]
  end

  def children(_target) do
    [
      # Children for all targets except host
      # Starts a worker by calling: Amogus.Worker.start_link(arg)
      # {Amogus.Worker, arg},
    ]
  end

  def target() do
    Application.get_env(:amogus, :target)
  end
end
