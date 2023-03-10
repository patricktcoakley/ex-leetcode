defmodule Leetcode.Array.BinarySearchTest do
  use ExUnit.Case
  import Leetcode.Array.BinarySearch

  describe "search/2" do
    test "example1" do
      assert search([-1, 0, 3, 5, 9, 12], 9) == 4
    end

    test "example2" do
      assert search([-1, 0, 3, 5, 9, 12], 2) == -1
    end
  end
end
