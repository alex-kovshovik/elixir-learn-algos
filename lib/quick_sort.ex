defmodule QuickSort do
  @doc """
  Sorts the passed in list using Quick Sort algorithm

  iex> QuickSort.sort([5, 3, 8, 4, 1, 45, 98, 2, -5, -24, 249])
  [-24, -5, 1, 2, 3, 4, 5, 8, 45, 98, 249]
  """
  def sort([]), do: []
  def sort([head | tail]) do
    {low, high} = Enum.split_with(tail, fn n -> n < head end)
    sort(low) ++ [ head | sort(high) ]
  end
end
