defmodule ProvoLiveWeb.MyLiveView do
  use Phoenix.LiveView

  def mount(_session, socket) do
    {:ok, assign(socket, my_message: "Hello Provo Live!")}
  end

  def render(assigns) do
    ~L"""
      <div>
        <h1>Provo Live View</h1>
        <p><%= @my_message %></p>
        <button phx-click="change">
        Send New Message
        </button>
      </div>
    """
  end

  def handle_event("change_message", _value, socket) do
    {:noreply, assign(socket, my_message: "New Message")}
  end
end
