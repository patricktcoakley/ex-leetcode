defmodule Leetcode.List.AddTwoNumbersTest do
  alias Leetcode.List.ListNode
  import Leetcode.List.AddTwoNumbers
  use ExUnit.Case

  describe "add_two_numbers/1" do
    test "example 1" do
      l1 = ListNode.from_list([2, 4, 3])
      l2 = ListNode.from_list([5, 6, 4])
      assert add_two_numbers(l1, l2) == ListNode.from_list([7, 0, 8])
    end

    test "example 2" do
      l1 = ListNode.from_list([0])
      l2 = ListNode.from_list([0])
      assert add_two_numbers(l1, l2) == ListNode.from_list([0])
    end

    test "example 3" do
      l1 = ListNode.from_list([9, 9, 9, 9, 9, 9, 9])
      l2 = ListNode.from_list([9, 9, 9, 9])
      assert add_two_numbers(l1, l2) == ListNode.from_list([8, 9, 9, 9, 0, 0, 0, 1])
    end
  end
end
