defmodule AmogusUiWeb.GameLive.Index do
  use AmogusUiWeb, :live_view

  @topic Atom.to_string(__MODULE__)
  @endpoint AmogusUiWeb.Endpoint
  require Logger

  @impl true
  def mount(_params, _session, socket) do
    Logger.info(@topic)
    {:ok, socket |> subscribe() |> assign(show: true)}
  end

  defp subscribe(socket) do
    if connected?(socket) do
      @endpoint.subscribe(@topic)
    end

    socket
  end

  @impl true
  def handle_event("report", _, socket) do
    @endpoint.broadcast(@topic, "report", [])
    {:noreply, socket}
  end

  @impl true
  def handle_info(
        %Phoenix.Socket.Broadcast{
          topic: @topic,
          event: "report",
          payload: []
        },
        socket
      ) do
    {:noreply, push_event(socket, "report", %{})}
  end

  @impl true
  def handle_info(
        %Phoenix.Socket.Broadcast{
          topic: @topic,
          event: "emergency",
          payload: []
        },
        socket
      ) do
    {:noreply, push_event(socket, "emergency", %{})}
  end
end
