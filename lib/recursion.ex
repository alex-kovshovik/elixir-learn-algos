defmodule Recursion do
  def min([]), do: nil
  def min(list = [head | _]), do: mmin(list, head)

  def max([]), do: nil
  def max(list = [head | _]), do: mmax(list, head)
  
  defp mmin([], acc), do: acc
  defp mmin([head | tail], acc) do
    result = if(head < acc, do: head, else: acc)

    mmin(tail, result)
  end

  defp mmax([], acc), do: acc
  defp mmax([head | tail], acc) do
    result = if(head > acc, do: head, else: acc)

    mmax(tail, result)
  end
end
