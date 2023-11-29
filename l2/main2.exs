defmodule Lessontwo do
def swap_pair([]), do: []
def swap_pair([_]), do raise "Not Working"
def swap_pair([a, b|tail]) do
[b, a | swap_pair(tail)] end
end