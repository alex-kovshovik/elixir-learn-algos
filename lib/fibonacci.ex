defmodule Fibonacci do
  @doc """
  ## Examples:

    iex> Fibonacci.generate(6)
    [1, 1, 2, 3, 5, 8]
  """
  def generate(total) do
    Stream.unfold({1, 1}, &next_fun/1)
    |> Stream.map(fn {n, _} -> n end)
    |> Enum.take(total)
  end

  defp next_fun(acc = {n1, n2}), do: {acc, {n2, n1 + n2}}
end
