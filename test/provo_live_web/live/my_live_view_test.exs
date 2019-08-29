defmodule ProvoLiveWeb.MyLiveViewTest do
  use ProvoLiveWeb.ConnCase

  # Example from https://hexdocs.pm/phoenix_live_view/Phoenix.LiveViewTest.html#content
  use Phoenix.ConnTest
  import Phoenix.LiveViewTest
  @endpoint ProvoLiveWeb.Endpoint

  test "disconnected and connected mount", %{conn: conn} do
    {:ok, view, html} = live(conn, "/mylive")
    assert html =~ "<p>Hello Provo Live!</p>"

    assert render_click(
             view,
             "change_message"
           ) =~ "New Message"
  end
end
