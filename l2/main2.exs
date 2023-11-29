defmodule Lessontwo do

#def swap_pair([]), do: []
#def swap_pair([val]), do: [val ]
#def swap_pair([a, b|tail]) do
#[b, a | swap_pair(tail)] end

# {:user, name, role, age} = user
def filter_age(users), do: filter_age(users,[]) #вызывает себя по имени с параметрами users и пустой массив
defp filter_age([], acc), do: Enum.reverse(acc)
defp filter_age([user|users], acc) do
{:user, _, age} = user
if age > 16 do 
filter_age(users,[user|acc]) #вызывает саму себя (with tail)
else
filter_age(users,[acc]) end

def encore(str, shift) do
str = "Helloe"
Enum.map(str, fn el -> el+shift end)
end 

def defcode(str, shift) do
str = "Helloe"
Enum.map(str, fn el -> el-shift end)  #+1
end

def check(str, shift) do
   result = L.encore(str,shift) |>L.decore(shift)
   result == str
   # check([a, b | rest]) when a <= b, do: check([b | rest
end

end