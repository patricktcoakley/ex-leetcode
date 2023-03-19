defmodule Leetcode.List.MergeTwoLists do
  alias Leetcode.List.ListNode

  @spec merge_two_lists(list1 :: ListNode.t() | nil, list2 :: ListNode.t() | nil) ::
          ListNode.t() | nil
  def merge_two_lists(_list1 = nil, _list2 = nil), do: nil
  def merge_two_lists(list1, _list2 = nil), do: list1
  def merge_two_lists(_list1 = nil, list2), do: list2

  def merge_two_lists(list1, list2) when list1.val < list2.val do
    %ListNode{list1 | next: merge_two_lists(list1.next, list2)}
  end

  def merge_two_lists(list1, list2) do
    %ListNode{list2 | next: merge_two_lists(list1, list2.next)}
  end
end
