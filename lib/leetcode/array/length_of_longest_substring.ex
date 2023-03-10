defmodule Leetcode.Array.LengthOfLongestSubstring do
  @spec length_of_longest_substring(s :: String.t()) :: integer
  def length_of_longest_substring(s) do
    length_of_longest_substring(String.to_charlist(s), 0, 0, 0, %{})
  end

  defp length_of_longest_substring([head | tail], start, largest, i, map) do
    start =
      case Map.fetch(map, head) do
        {:ok, val} -> max(val, start)
        _ -> start
      end

    largest = max(largest, i - start + 1)
    length_of_longest_substring(tail, start, largest, i + 1, Map.put(map, head, i + 1))
  end

  defp length_of_longest_substring([], _, largest, _, _), do: largest
end
