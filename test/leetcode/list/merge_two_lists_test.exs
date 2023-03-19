defmodule Leetcode.List.MergeTwoListsTest do
  import Leetcode.List.MergeTwoLists
  alias Leetcode.List.ListNode
  use ExUnit.Case

  describe "merge_two_lists/2" do
    test "example 1" do
      expected = ListNode.from_list([1, 1, 2, 3, 4, 4])
      list1 = ListNode.from_list([1, 2, 4])
      list2 = ListNode.from_list([1, 3, 4])
      assert merge_two_lists(list1, list2) == expected
    end

    test "example 2" do
      expected = ListNode.from_list([])
      list1 = ListNode.from_list([])
      list2 = ListNode.from_list([])
      assert merge_two_lists(list1, list2) == expected
    end

    test "example 3" do
      expected = ListNode.from_list([0])
      list1 = ListNode.from_list([])
      list2 = ListNode.from_list([0])
      assert merge_two_lists(list1, list2) == expected
    end
  end
end
