defmodule Sortr do
  # [1, 2, 3] => {[1], [3, 2]}

  def desc([a]), do: a
  def desc([a, b]) when a >= b, do: [a, b]
  def desc([a, b]) when a < b, do: [b, a]

  def desc(list) do
    count = Enum.count(list)
    {left, right} = Enum.split(list, div(count, 2))

    merge(desc(left), desc(right))
  end

  defp merge([], list_b), do: list_b
  defp merge(list_a, []), do: list_a

  defp merge(list_a = [head_a | tail_a], list_b = [head_b | tail_b]) when head_a >= head_b do
    [head_a | merge(tail_a, head_b)]
  end

  defp merge(list_a = [head_a | tail_a], list_b = [head_b | tail_b]) when head_a < head_b do
    [head_b | merge(list_a, tail_b)]
  end
end
