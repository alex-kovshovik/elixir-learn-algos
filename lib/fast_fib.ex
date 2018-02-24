defmodule FastFib do
  @doc """
  ## Examples:

    iex> FastFib.generate(6)
    [1, 1, 2, 3, 5, 8]
  """
  def generate(total) do
    get_seq(total - 2, [1, 1]) |> Enum.reverse
  end

  defp get_seq(0, list), do: list
  defp get_seq(total, [n1, n2 | tail]), do: get_seq(total - 1, [n1 + n2, n1, n2 | tail])

  def fib_seq(n), do: fib_seq_helper([1, 0], n - 1)

  defp fib_seq_helper(seq, 0), do: Enum.reverse(seq)
  defp fib_seq_helper([a, b | _rest] = seq, n), do:
    fib_seq_helper([a + b | seq], n - 1)  
end
