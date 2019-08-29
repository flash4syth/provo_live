defmodule ProvoLiveWeb.MyLiveViewTest do
  use ProvoLiveWeb.ConnCase

  # Example from https://hexdocs.pm/phoenix_live_view/Phoenix.LiveViewTest.html#content
  use Phoenix.ConnTest
  import Phoenix.LiveViewTest
  @endpoint ProvoLiveWeb.Endpoint

  test "disconnected and connected mount", %{conn: conn} do
    conn = get(conn, "/mylive")
    assert html_response(conn, 200) =~ "<p>Hello Provo Live!</p>"

    {:ok, view, html} = live(conn)
  end

  test "redirected mount", %{conn: conn} do
    assert {:error, %{redirect: %{to: "/somewhere"}}} = live(conn, "mylive")
  end
end
