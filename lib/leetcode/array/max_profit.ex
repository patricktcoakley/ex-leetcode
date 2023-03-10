defmodule Leetcode.Array.MaxProfit do
  @spec max_profit(prices :: [integer]) :: integer
  def max_profit(prices), do: max_profits(prices, hd(prices), 0)

  defp max_profits([], _smallest, largest), do: largest

  defp max_profits([price | prices], smallest, largest) do
    max_profits(prices, min(smallest, price), max(largest, price - smallest))
  end
end
