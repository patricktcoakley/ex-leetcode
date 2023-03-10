defmodule Leetcode.List.ListNodeTest do
  alias Leetcode.List.ListNode
  use ExUnit.Case

  test "new/1" do
    assert ListNode.new() == %ListNode{}
    assert ListNode.new(1) == %ListNode{val: 1}
  end

  test "from_list/1" do
    assert ListNode.from_list([]) == nil
    assert ListNode.from_list([1]) == %ListNode{val: 1, next: nil}
    assert ListNode.from_list([1, 2]) == %ListNode{val: 1, next: %ListNode{val: 2, next: nil}}
  end
end
