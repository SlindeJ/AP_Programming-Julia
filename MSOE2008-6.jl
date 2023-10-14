print("Please enter the string: ")
str = readline()  # starts as a string, no parse needed
print("Please enter the string to search for: ")
search = readline() # string to search for
local instances = 0 #instances of str 

# indexes in julia are found using [], ex: str[start, end-1]. 


for lcv in range(0, length(str) - length(search)) 
  if str[lcv, length(search)] == search
    instances = instances + 1
  end
end
print("\nThe string $search appears in string $str $instances times")






