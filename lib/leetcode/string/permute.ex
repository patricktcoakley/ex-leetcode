defmodule Leetcode.String.Permute do
  @spec permute(nums :: [integer]) :: [[integer]]
  def permute(_nums = []), do: [[]]

  def permute(nums) do
    for(h <- nums, t <- permute(nums |> List.delete(h)), do: [h | t])
  end
end
