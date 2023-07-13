defmodule WrenchPhoenixTestWeb.HelloController do
  use WrenchPhoenixTestWeb, :controller

  def index(conn, _params) do
    conn
    |> put_layout(html: :admin)
    |> render(:index)
  end

  def show(conn, %{"messenger" => messenger}) do
    conn
    |> put_layout(html: :admin)
    |> render(:show, messenger: messenger)
  end
end
