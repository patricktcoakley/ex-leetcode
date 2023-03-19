defmodule Leetcode.Array.SortedSquaresTest do
  import Leetcode.Array.SortedSquares
  use ExUnit.Case

  describe "sorted_squares/1" do
    test "example 1" do
      assert sorted_squares([-4, -1, 0, 3, 10]) == [0, 1, 9, 16, 100]
    end

    test "example 2" do
      assert sorted_squares([-7, -3, 2, 3, 11]) == [4, 9, 9, 49, 121]
    end
  end
end
