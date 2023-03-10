defmodule Leetcode.Array.TwoSumTest do
  use ExUnit.Case
  import Leetcode.Array.TwoSum

  describe "two_sum/2" do
    test "example1" do
      assert two_sum([2, 7, 11, 15], 9) == [0, 1] || [1, 0]
    end

    test "example2" do
      assert two_sum([3, 2, 4], 6) == [1, 2] || [2, 1]
    end

    test "example3" do
      assert two_sum([3, 3], 6) == [0, 1] || [1, 0]
    end
  end
end
