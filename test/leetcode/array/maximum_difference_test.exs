defmodule Leetcode.Array.MaximumDifferenceTest do
  use ExUnit.Case
  import Leetcode.Array.MaximumDifference

  describe "maximum_difference/1" do
    test "example1" do
      assert maximum_difference([7, 1, 5, 4]) == 4
    end

    test "example2" do
      assert maximum_difference([9, 4, 3, 2]) == -1
    end

    test "example3" do
      assert maximum_difference([1, 5, 2, 10]) == 9
    end
  end
end
