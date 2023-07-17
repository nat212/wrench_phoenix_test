defmodule WrenchPhoenixTestWeb.CartHTML do
  use WrenchPhoenixTestWeb, :html

  alias WrenchPhoenixTest.ShoppingCart

  embed_templates "cart_html/*"

  def currency_to_str(%Decimal{} = val), do: "R#{Decimal.round(val, 2)}"
end
