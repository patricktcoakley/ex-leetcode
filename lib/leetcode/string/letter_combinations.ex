defmodule Leetcode.String.LetterCombinations do
  @dictionary %{
    "2" => "abc",
    "3" => "def",
    "4" => "ghi",
    "5" => "jkl",
    "6" => "mno",
    "7" => "pqrs",
    "8" => "tuv",
    "9" => "wxyz"
  }

  @spec letter_combinations(digits :: String.t()) :: [String.t()]
  def letter_combinations(""), do: []

  def letter_combinations(digits) do
    letter_combinations(digits |> String.codepoints(), 0, []) |> List.flatten()
  end

  defp letter_combinations(digits, index, curr) when length(digits) == index do
    List.to_string(curr)
  end

  defp letter_combinations(digits, index, curr) do
    @dictionary[digits |> Enum.at(index)]
    |> String.codepoints()
    |> Enum.map(fn letter -> letter_combinations(digits, index + 1, [curr | letter]) end)
  end
end
