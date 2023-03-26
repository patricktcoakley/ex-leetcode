defmodule Leetcode.Array.FloodFillTest do
  use ExUnit.Case
  import Leetcode.Array.FloodFill

  describe "flood_fill/4" do
    test "example 1" do
      expected = [[2, 2, 2], [2, 2, 0], [2, 0, 1]]

      assert flood_fill([[1, 1, 1], [1, 1, 0], [1, 0, 1]], 1, 1, 2) == expected
    end

    test "example 2" do
      expected = [[0, 0, 0], [0, 0, 0]]

      assert flood_fill([[0, 0, 0], [0, 0, 0]], 0, 0, 0) == expected
    end
  end
end
