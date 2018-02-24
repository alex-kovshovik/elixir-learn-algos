defmodule QuickSort do
  def sort([]), do: []
  def sort([a]), do: [a]
  def sort([head | tail]) do
    {low, high} = Enum.split_with(tail, fn n -> n < head end)
    sort(low) ++ [ head | sort(high) ]
  end
end

