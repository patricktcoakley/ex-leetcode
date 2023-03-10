defmodule Leetcode.Tree.MaxDepth do
  alias Leetcode.Tree.TreeNode

  @spec max_depth(root :: TreeNode.t() | nil) :: integer

  def max_depth(_root = nil), do: 0

  def max_depth(root) do
    max(max_depth(root.left), max_depth(root.right)) + 1
  end
end
