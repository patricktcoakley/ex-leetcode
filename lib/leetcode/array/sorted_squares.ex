defmodule Leetcode.Array.SortedSquares do
  @spec sorted_squares(nums :: [integer]) :: [integer]
  def sorted_squares(_nums = []), do: []

  def sorted_squares(nums) do
    sorted_squares(nums, 0, length(nums) - 1, [])
  end

  defp sorted_squares(nums, l, r, out) when l <= r do
    l_val = Enum.at(nums, l) |> Integer.pow(2)
    r_val = Enum.at(nums, r) |> Integer.pow(2)

    if l_val > r_val do
      sorted_squares(nums, l + 1, r, [l_val | out])
    else
      sorted_squares(nums, l, r - 1, [r_val | out])
    end
  end

  defp sorted_squares(_nums, _l, _r, out), do: out
end
