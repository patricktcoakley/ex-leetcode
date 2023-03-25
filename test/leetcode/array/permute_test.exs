defmodule Leetcode.Array.PermuteTest do
  use ExUnit.Case
  import Leetcode.Array.Permute

  describe "permute/1" do
    test "example 1" do
      assert permute([1, 2, 3]) == [
               [1, 2, 3],
               [1, 3, 2],
               [2, 1, 3],
               [2, 3, 1],
               [3, 1, 2],
               [3, 2, 1]
             ]
    end

    test "example 2" do
      assert permute([0, 1]) == [[0, 1], [1, 0]]
    end

    test "example 3" do
      assert permute([1]) == [[1]]
    end
  end
end
