defmodule Leetcode.String.GroupAnagrams do
  @spec group_anagrams(strs :: [String.t()]) :: [[String.t()]]
  def group_anagrams(strs) do
    strs
    |> Enum.group_by(&(&1 |> String.graphemes() |> Enum.sort()))
    |> Map.values()
  end
end
