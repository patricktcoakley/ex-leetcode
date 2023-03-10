defmodule Leetcode.Tree.TreeNode do
  @type t :: %__MODULE__{
          val: integer,
          left: TreeNode.t() | nil,
          right: TreeNode.t() | nil
        }
  defstruct val: 0, left: nil, right: nil

  def new(val, left \\ nil, right \\ nil) do
    %__MODULE__{val: val, left: left, right: right}
  end

  def from_list([]), do: nil
  def from_list([val]), do: new(val)
  # TODO
end
