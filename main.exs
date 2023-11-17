defmodule Lesson do
  def attrs do
  IO.outs(@pi)
end

def point_info({:point,x,y}) do
  IO.puts(x)
  IO.puts(y)
end

def list_work do
  some_list=["London", "Seoul","USA", "Canada"]
  [first, second | tail] = some_list
 #add element:
  new_list = ["New York" | some_list]
  IO.puts(inspect(new_list))
  IO.puts(inspect(new_list))
  hd(new_list)
  tl(new_list)
 # IO.puts(first)
 # IO.puts(inspect(second))
 # IO.puts(inspect(tail))
 # IO.puts(some_list)
end

def get_sum(l) do
 [first, second | _ ] = l
 first + second
end

def map do
my_map = %{:name=>"Alya", :age=>20}
my_map.age
Map.get(my_map, :nmae, "not found") #with error
end

end