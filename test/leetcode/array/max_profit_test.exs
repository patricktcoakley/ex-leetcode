defmodule Leetcode.Array.MaxProfitTest do
  use ExUnit.Case
  import Leetcode.Array.MaxProfit

  describe "max_profit/1" do
    test "example1" do
      assert max_profit([7, 1, 5, 3, 6, 4]) == 5
    end

    test "example2" do
      assert max_profit([7, 6, 4, 3, 1]) == 0
    end
  end
end
