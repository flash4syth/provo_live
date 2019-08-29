defmodule ProvoLiveWeb.PageController do
  use ProvoLiveWeb, :controller
  alias Phoenix.LiveView

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def mylive(conn, _params) do
    live_render(conn, ProvoLiveWeb.MyLiveView, session: %{})
  end
end
