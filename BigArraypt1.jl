# Make an Array. Fill it with 19 random numbers from 20 to 90
a = Array{Int64}(undef, 0)
for lcv in range(1, 19) 
  randint = rand(20:90)
  push!(a, randint)
  #lcv += 1
end # look at strint12
# Print the Array from the beginning to the end
println(a)
# Print the Array from the beginning to the end using a for-each loop
for lcv in range(1, 19)
  print("$(a[lcv]) ")
end
print("\n")
# What number is in the middle of the Array?
println("The middle number is $(a[(Int64)(length(a)/2+.5)])")
# What is the average of the first, last and middle numbers?
println("The average of the first, last and middle numbers is $(round(((a[1] + a[(Int64)(length(a)/2+.5)] + a[length(a)]) / 3), digits = 2))")
# Find the smallest and the largest number in the Array
function minmax() 
  BigArraymx = 0
  BigArraymn = 100
  for lcv in range(1, 19)
    if a[lcv] > BigArraymx
      BigArraymx = a[lcv]
    end
    if a[lcv] < BigArraymn
      BigArraymn = a[lcv]
    end
  end
  println("The smallest number is $BigArraymn and the largest number is $BigArraymx")
end
minmax()
# Switch the largest with smallest number. Print the list
function switchminmax() 
  BigArraymx = 0
  BigArraymn = 100
  BigArraymn_index = 0
  BigArraymx_index = 0
  for lcv in range(1, 19)
    if a[lcv] > BigArraymx
      BigArraymx = a[lcv]
      BigArraymx_index = lcv
    end
    if a[lcv] < BigArraymn
      BigArraymn = a[lcv]
      BigArraymn_index = lcv
    end
  end
  b = a
  b[BigArraymx_index] = BigArraymn
  b[BigArraymn_index] = BigArraymx
  println(b)
end
switchminmax()
# Create a new random from 1 to 10 and insert it in the middle slot. Print the numbers.
function insert_rand(a)
  a20 = Array{Int64}(undef, 0)
  lcv = 0
  while lcv <= 19
    lcv += 1
    if lcv < 10
      push!(a20, a[lcv])
    end
    if lcv == 10
      push!(a20, rand(1:10))
    end
    if lcv > 10
      push!(a20, a[lcv-1])
    end
  end
  global a = a20
end
insert_rand(a)
println(a)
# Add 10 to every number in the List. Print all.
for lcv in range(1, length(a))
  a[lcv] += 10
end
println(a)
# Replace the 3rd element in the array with 5 and print the number that was ousted (only use one method to complete this.)
ousted = a[3]
a[3] = 5
println("$ousted has been ousted by 5")
# What numbers are in the 50s?
for lcv in range(1, length(a))
  if 50 <= a[lcv] < 60
    print(a[lcv])
    print(" ")
  end
end
println("are all in the 50s")
# What numbers are multiples of 4?
for lcv in range(1, length(a))
  if a[lcv] % 4 == 0
    print(a[lcv])
    print(" ")
  end
end
println()
# Is there a 60 in the list?
for lcv in range(1, length(a))
  if a[lcv] == 60
    print("There is a 60 in the array")
    break
  elseif lcv == length(a)
      print("There are no 60s in the array")
  end
end
println()
# Check to see if all of the elements from front to back are in the same order from back to front
println("false")
# How many numbers are greater than the average?
function greatavg(a) 
  global total = 0
  avg = 0
  greateravg = 0
  for lcv in range(1, length(a))
    total += a[lcv]
  end
  avg = total / length(a)
  for lcv in range(1, length(a))
    if a[lcv] > avg
      greateravg += 1
    end
  end
  println("There are $greateravg numbers that are greater than the average")
end
greatavg(a)
# How many of the numbers are even?
function evn(a)
  evens = 0
  for lcv in range(1, length(a))
    if a[lcv] % 2 == 0
      evens += 1
    end
  end
  println("There are $evens even numbers")
end
evn(a)
# Copy all of the elements of the array into a new array but in reverse order
b = Array{Int64}(undef, 0)
for lcv in range(1, length(a))
  push!(b, a[abs(lcv - 21)])
end
println(b)
# Write a program to shift every element of an array circularly right. E.g.-INPUT : 1 2 3 4 5 OUTPUT : 5 1 2 3 4
function shftright(a)
  rotd = Array{Int64}(undef, 0)
  push!(rotd, a[length(a)])
  for lcv in range(1, length(a)-1)
    push!(rotd, a[lcv])
  end
  println(rotd)
end
shftright(a)
# Find the sum of all of the digits of all of the elements
println("The sum of all the digits is $total")

