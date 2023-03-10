alias Leetcode.List.ListNode

defmodule Leetcode.List.AddTwoNumbers do
  @spec add_two_numbers(l1 :: ListNode.t() | nil, l2 :: ListNode.t() | nil) :: ListNode.t() | nil
  def add_two_numbers(l1, l2), do: add_two_numbers(l1, l2, 0)

  defp add_two_numbers(_l1 = nil, _l2 = nil, _carry = 0), do: nil
  defp add_two_numbers(_l1 = nil, _l2 = nil, carry), do: %ListNode{val: carry}

  defp add_two_numbers(_l1 = nil, l2, carry) do
    total = l2.val + carry

    %ListNode{
      val: rem(total, 10),
      next: add_two_numbers(nil, l2.next, Integer.floor_div(total, 10))
    }
  end

  defp add_two_numbers(l1, _l2 = nil, carry) do
    total = l1.val + carry

    %ListNode{
      val: rem(total, 10),
      next: add_two_numbers(l1.next, nil, Integer.floor_div(total, 10))
    }
  end

  defp add_two_numbers(l1, l2, carry) do
    total = l1.val + l2.val + carry

    %ListNode{
      val: rem(total, 10),
      next: add_two_numbers(l1.next, l2.next, Integer.floor_div(total, 10))
    }
  end
end
