defmodule Leetcode.Array.MaximumDifference do
  @spec maximum_difference(nums :: [integer]) :: integer
  def maximum_difference([num | nums]) do
    diff = maximum_difference(nums, num, 0)
    if diff == 0, do: -1, else: diff
  end

  defp maximum_difference(_nums = [], _smallest, largest), do: largest

  defp maximum_difference([num | nums], smallest, largest) do
    maximum_difference(nums, min(smallest, num), max(largest, num - smallest))
  end
end
