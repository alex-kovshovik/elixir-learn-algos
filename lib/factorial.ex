defmodule Factorial do
  @doc """
  Calculates factorial of N

  Example:
  iex> Factorial.of(5)
  120
  """
  def of(0), do: 1
  def of(n) do
    Stream.iterate(1, &(&1 + 1))
      |> Enum.take(n)
      |> Enum.reduce(&*/2)
  end
end
