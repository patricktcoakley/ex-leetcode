defmodule Leetcode.String.IsValid do
  @m %{"}" => "{", "]" => "[", ")" => "("}

  @spec is_valid(s :: String.t()) :: boolean

  def is_valid(s) do
    is_valid(s |> String.graphemes(), [])
  end

  def is_valid([], stack), do: length(stack) == 0

  def is_valid([h | t], stack) do
    case Map.has_key?(@m, h) do
      false ->
        is_valid(t, [h | stack])

      _ ->
        length(stack) > 0 and Map.get(@m, h) == Enum.at(stack, 0) and
          is_valid(t, List.delete_at(stack, 0))
    end
  end
end
