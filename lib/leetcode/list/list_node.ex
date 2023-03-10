defmodule Leetcode.List.ListNode do
  @type t :: %__MODULE__{
          val: integer,
          next: ListNode.t() | nil
        }
  defstruct val: 0, next: nil

  def new(val \\ 0) do
    %__MODULE__{
      val: val,
      next: nil
    }
  end

  def from_list([]), do: nil

  def from_list(list) do
    Enum.reduce(list |> Enum.reverse(), %__MODULE__{}, fn x, acc ->
      %__MODULE__{next: %__MODULE__{acc | val: x}}
    end).next
  end
end
