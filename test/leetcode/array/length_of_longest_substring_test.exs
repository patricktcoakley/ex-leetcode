defmodule Leetcode.Array.LengthOfLongestSubstringTest do
  use ExUnit.Case
  import Leetcode.Array.LengthOfLongestSubstring

  describe "length_of_longest_substring/1" do
    test "example1" do
      assert length_of_longest_substring("abcabcbb") == 3
    end

    test "example2" do
      assert length_of_longest_substring("bbbbb") == 1
    end

    test "example3" do
      assert length_of_longest_substring("pwwkew") == 3
    end
  end
end
