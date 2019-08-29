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
      </div>
    """
  end
end
