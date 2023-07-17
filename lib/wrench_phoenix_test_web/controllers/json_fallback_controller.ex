defmodule WrenchPhoenixTestWeb.JSONFallbackController do
  use Phoenix.Controller

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(json: WrenchPhoenixTestWeb.ErrorJSON)
    |> render(:"404")
  end
end
