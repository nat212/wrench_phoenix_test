defmodule WrenchPhoenixTestWeb.SvelteComponent do
  use WrenchPhoenixTestWeb, :live_component

  def render(assigns) do
    ~H"""

    """
  end

  def mount(socket) do
    {:ok, socket}
  end
end
