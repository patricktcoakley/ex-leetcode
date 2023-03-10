defmodule Leetcode.Array.TwoSum do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target), do: two_sum(nums, target, %{}, 0)

  defp two_sum([num | nums], target, map, i) do
    case Map.fetch(map, target - num) do
      {:ok, val} -> [val, i]
      _ -> two_sum(nums, target, Map.put(map, num, i), i + 1)
    end
  end
end
