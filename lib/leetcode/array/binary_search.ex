defmodule Leetcode.Array.BinarySearch do
  @spec search(nums :: [integer], target :: integer) :: integer
  def search(nums, target) do
    search(Enum.with_index(nums), target, 0, length(nums) - 1)
  end

  defp search(_nums, _target, l, r) when l >= r, do: -1

  defp search(nums, target, l, r) do
    {mid, i} = Enum.at(nums, div(r + l, 2))

    cond do
      mid == target -> i
      mid > target -> search(nums, target, l, i - 1)
      mid < target -> search(nums, target, i + 1, r)
    end
  end
end
