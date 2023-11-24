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
IO.puts(" #{my_map.name}  #{my_map.age}")
new_map = Map.put(my_map, :email, "myemail@gmail.com")
IO.puts(inspect(my_map))
IO.puts(inspect(new_map))

new_map1=Map.delete(new_map, :email)
IO.puts(inspect(new_map1))
end

def if_work(color) do
if color == "blue" do
"Yes" end
end

def if_short(color) do
if color == "blue", do: "Yes" end

def unless_work(color) do
unless color == "red" do "Yes"
else "No" end
end

def if_short2(color) do
if color == "red", do: "Yes", else: "No" 
end

def case_nod(a,b) do   #8 6  |  6 - 2
case rem(a,b) do   # 2      | 0
0 -> b
c -> case_nod(b,c) end  #case_nod(6,2)
end

def user({:user, age, name}) do
 value_if = if age >= 18, do: "Welcome #{name}", else: "Go away #{name}"
 value_if
end

def user_case(user) do
case user do {:user, age, name} when age>=18 -> "Welcome #{name}"
#<age verification>
{:user, _, name}                             -> "Go away #{name}" 
_                                            -> "Arror verity" end
end

def admin(user) do
case user do {:user, _, _, :admin} -> :ok
{:user, _, _, :moderator} -> :ok
{:user, age, name, role} when age>=18        -> "Welcome #{name}"

{:user, _, name}                             -> "Go away #{name}" 
_                                            -> "Arror verity" end
end

def colors(current_color, figure) do
case {current_color, figure} do
{current_color, {color,_}} when (current_color == color) and (type == :pawn or type == :rock ) -> "Yes"
_ -> "No" end
end

def move(current_color, figure) do
case figure do {:pawn, ^current_color} -> true
               {:rock, ^current_color} ->true
               _ -> false end
end


def cond_work(number) do
cond do
rem(number, 2) == 0 -> "Число кратно 2"
rem(number, 3) == 0 -> "Число кратно 2"
rem(number, 7) == 0 -> "Число кратно 7"
true -> "last true" end
end
#cond do
#(color == "red") and ("black") -> "color match"
#color == 1234  -> "just error"
#color == "green" -> "color match"
#end

def sum(n1,n2) do
n1+n2 
end
def sum(n1,n2,n3) do
n1+n2+n3
end
def sum (n1, st, n3, n4) do
"Str"
end

#console functions
#Integer.to_string(8657)
#String.capitalize("hello")
#String.upcase("helloe")
#String.downcase("HELLO WORld")
#String.contains?("Hellow", "hello")
#String.contains?(String.downcase("Hellow WorLD", String.downcase))
#String.split("abs defg")
#String.to_integer("213") +578
#String.length("sjkfddsj")
#String.trim(" ksk   ")
#String.replace(sdk!dsjf  !jds)
#String.reverse(abssba)

#List.first({1,2,"3"})
#List.last({1,2,"3"})
#List.to_string(["abc", "3", "777"])

#mymap = %{name: "myname", lastname: "mylastname"}
#Map.put(mymap, :phone, "99999999")

#m_new - имя переменной
#m_new.Map.put_new(m, :phone, "6666")
#m_new = Map.has_key?(m,:phone)
#m_new = Map.values(m)
#m_new = Map.delete(m,:phone)
end