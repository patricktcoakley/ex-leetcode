defmodule Leetcode.Tree.TreeNodeTest do
  use ExUnit.Case
  alias Leetcode.Tree.TreeNode

  describe "from_list/1" do
    test "empty list" do
      assert TreeNode.from_list([]) == nil
    end

    test "single value" do
      assert TreeNode.from_list([1]) == %TreeNode{val: 1}
    end
  end
end
