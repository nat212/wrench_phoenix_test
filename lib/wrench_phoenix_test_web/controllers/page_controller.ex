defmodule WrenchPhoenixTestWeb.PageController do
  use WrenchPhoenixTestWeb, :controller

  def home(conn, _params) do
    conn
    |> put_layout(html: :admin)
    |> render(:home)
  end
end
