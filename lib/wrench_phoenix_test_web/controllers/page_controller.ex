defmodule WrenchPhoenixTestWeb.PageController do
  use WrenchPhoenixTestWeb, :controller

  def home(conn, _params) do
    conn
    |> put_flash(:error, "Let's pretend we have an error")
    |> render(:home, layout: false)
  end
end
