defmodule Leetcode.Array.SearchMatrix do
  @spec search_matrix(matrix :: [[integer]], target :: integer) :: boolean
  def search_matrix(matrix, target) do
    m = length(matrix)
    n = length(matrix |> hd)
    search_matrix(matrix, target, m, n, m - 1, 0)
  end

  defp search_matrix(matrix, target, m, n, row, col)
       when row >= 0 and row < m and col >= 0 and col < n do
    val = matrix |> Enum.at(row) |> Enum.at(col)

    cond do
      val > target ->
        search_matrix(matrix, target, m, n, row - 1, col)

      val < target ->
        search_matrix(matrix, target, m, n, row, col + 1)

      true ->
        true
    end
  end

  defp search_matrix(_matrix, _target, _m, _n, _row, _col), do: false
end
