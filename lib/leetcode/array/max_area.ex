defmodule Leetcode.Array.MaxArea do
  @spec max_area(height :: [integer]) :: integer

  def max_area(height) when length(height) <= 2, do: Enum.product(height)

  def max_area(height) do
    {left, right} = {0, length(height) - 1}

    height
    |> List.to_tuple()
    |> max_area(left, right, 0)
  end

  defp max_area(height, left, right, max) when left < right do
    {left_val, right_val} = {elem(height, left), elem(height, right)}
    updated_max = max(max, min(left_val, right_val) * (right - left))

    if left_val < right_val do
      max_area(height, left + 1, right, updated_max)
    else
      max_area(height, left, right - 1, updated_max)
    end
  end

  defp max_area(_height, _left, _right, max), do: max
end
