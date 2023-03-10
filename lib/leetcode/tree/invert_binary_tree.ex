alias Leetcode.Tree.TreeNode

defmodule Leetcode.Tree.InvertTree do
  @spec invert_tree(root :: TreeNode.t() | nil) :: TreeNode.t() | nil
  def invert_tree(_root = nil), do: nil

  def invert_tree(root) do
    %TreeNode{root | left: invert_tree(root.right), right: invert_tree(root.left)}
  end
end
