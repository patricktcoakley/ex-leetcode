defmodule Leetcode.String.IsValidTest do
  use ExUnit.Case
  import Leetcode.String.IsValid

  describe "is_valid/1" do
    test "example 1" do
      assert is_valid("()") == true
    end

    test "example 2" do
      assert is_valid("()[]{}") == true
    end

    test "example 3" do
      assert is_valid("(]") == false
    end
  end
end
