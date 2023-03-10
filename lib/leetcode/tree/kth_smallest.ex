alias Leetcode.Tree.TreeNode

defmodule Leetcode.Tree.KthSmallest do
  @spec kth_smallest(root :: TreeNode.t() | nil, k :: integer) :: integer
  def kth_smallest(root, k), do: Enum.at(kth_smallest(root), k - 1)

  defp kth_smallest(_root = nil), do: []

  defp kth_smallest(root) do
    kth_smallest(root.left) ++ [root.val] ++ kth_smallest(root.right)
  end
end
