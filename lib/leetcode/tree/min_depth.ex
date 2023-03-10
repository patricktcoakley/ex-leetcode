defmodule Leetcode.Tree.MinDepth do
  @spec min_depth(root :: TreeNode.t() | nil) :: integer
  
  def min_depth(_root = nil), do: 0
  def min_depth(root), do: min_depth(min_depth(root.left), min_depth(root.right))

  defp min_depth(left, right) when left == 0 or right == 0, do: left + right + 1
  defp min_depth(left, right), do: min(left, right) + 1
end
