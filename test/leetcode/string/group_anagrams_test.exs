defmodule Leetcode.String.GroupAnagramsTest do
  use ExUnit.Case
  import Leetcode.String.GroupAnagrams

  describe "group_anagrams/1" do
    test "example 1" do
      expected = [["bat"], ["nat", "tan"], ["ate", "eat", "tea"]] |> sort()
      result = group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"]) |> sort()

      assert result == expected
    end

    test "example 2" do
      expected = [[""]] |> sort()
      result = group_anagrams([""]) |> sort()

      assert result == expected
    end

    test "example 3" do
      expected = [["a"]] |> sort()
      result = group_anagrams(["a"]) |> sort()

      assert result == expected
    end
  end

  defp sort(list) do
    list
    |> Enum.sort(&(length(&1) < length(&2)))
    |> Enum.map(&(&1 |> Enum.sort()))
  end
end
