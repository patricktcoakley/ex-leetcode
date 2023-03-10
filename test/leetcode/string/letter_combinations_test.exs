defmodule Leetcode.String.LetterCombinationsTest do
  use ExUnit.Case
  import Leetcode.String.LetterCombinations

  describe "letter_combinations/1" do
    test "example 1" do
      assert letter_combinations("23") == ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"]
    end

    test "example 2" do
      assert letter_combinations("") == []
    end

    test "example 3" do
      assert letter_combinations("2") == ["a", "b", "c"]
    end
  end
end
