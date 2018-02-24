defmodule Primes do
  
  @doc """
  Print out first N prime numbers

  iex> Primes.get(7)
  [1, 2, 3, 5, 7, 11, 13]
  """
  def get(total) do
    Stream.iterate(1, &(&1 + 1))
    |> Enum.reduce_while({[], 0}, fn number, acc -> add_if_prime(total, number, acc) end)
    |> elem(0)
    |> Enum.reverse
  end

  defp add_if_prime(total, _, {list, count}) when total == count, do: {:halt, {list, count}}
  defp add_if_prime(_, number, {list, count}) do
    if is_prime?(number) do
      {:cont, {[number | list], count + 1}}
    else
      {:cont, {list, count}}
    end
  end

  defp is_prime?(number) when number <= 0, do: false
  defp is_prime?(number) when number == 1, do: true
  defp is_prime?(number) when number == 2, do: true
  defp is_prime?(number) do
    2..number-1
      |> Enum.all?(&(rem(number, &1) > 0))
  end
end
