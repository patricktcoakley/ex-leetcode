defmodule Leetcode.Array.SearchMatrixTest do
  use ExUnit.Case
  import Leetcode.Array.SearchMatrix

  describe "search_matrix/1" do
    test "example 1" do
      assert search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 3) == true
    end

    test "example 2" do
      assert search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 13) == false
    end
  end
end
