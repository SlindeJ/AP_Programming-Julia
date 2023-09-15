print("Please enter a number between 1-13: ")
num1 = readline()
num1 = parse(Int64, num1)
print("Please enter a number between 2-20: ")
num2 = readline()
num2 = parse(Int64, num2)
print(abs(-2))

if (1 <= num1 <= 13) #and (2 <= num2 <= 20)
  println("Original number are $num1 and $num2")
  sum = num1 + num2
  println("Sum = $sum")
  

else 
  println("Please enter valid numbers")
end




