defmodule Leetcode.Array.FloodFill do
  @spec flood_fill(image :: [[integer]], sr :: integer, sc :: integer, color :: integer) :: [
          [integer]
        ]
  def flood_fill(image, sr, sc, new_color) do
    old_color = image |> Enum.at(sr) |> Enum.at(sc)

    if old_color == new_color do
      image
    else
      m = length(image)
      n = length(Enum.at(image, 0))
      flood(image, sr, m, sc, n, old_color, new_color)
    end
  end

  defp flood(image, row, rows, col, cols, old_color, new_color) do
    if should_flood?(image, row, rows, col, cols, old_color) do
      updated_row = image |> Enum.at(row) |> List.replace_at(col, new_color)

      image
      |> List.replace_at(row, updated_row)
      |> flood(row + 1, rows, col, cols, old_color, new_color)
      |> flood(row - 1, rows, col, cols, old_color, new_color)
      |> flood(row, rows, col + 1, cols, old_color, new_color)
      |> flood(row, rows, col - 1, cols, old_color, new_color)
    else
      image
    end
  end

  defp should_flood?(image, row, rows, col, cols, old_color) do
    row >= 0 and row < rows and col >= 0 and col < cols and
      image |> Enum.at(row) |> Enum.at(col) == old_color
  end
end
