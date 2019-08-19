defmodule ProvoLiveWeb.PageController do
  use ProvoLiveWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
