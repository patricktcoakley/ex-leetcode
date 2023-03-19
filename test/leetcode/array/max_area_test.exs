defmodule Leetcode.Array.MaxAreaTest do
  use ExUnit.Case
  import Leetcode.Array.MaxArea

  describe "max_area/1" do
    test "example 1" do
      assert max_area([1, 8, 6, 2, 5, 4, 8, 3, 7]) == 49
    end

    test "example 2" do
      assert max_area([1, 1]) == 1
    end
  end
end
