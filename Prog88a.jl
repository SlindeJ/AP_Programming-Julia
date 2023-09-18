print("Please enter a number between 1-13: ")
num1 = readline()
num1 = parse(Int64, num1)
print("Please enter a number between 2-20: ")
num2 = readline()
num2 = parse(Int64, num2)


if (1 <= num1 <= 13)
  if (2 <= num2 <= 20)
    println("Original number are $num1 and $num2")
    sum = num1 + num2
    println("Sum = $sum")
    diff = num2 - num1
    println("Difference = $diff")
    product = num1 * num2
    println("Product = $product")
    avg = sum / 2
    println("Average = $avg")
    absval = abs(diff)
    println("Absolute Value = $absval")
    max = (absval + sum) / 2
    min = sum - max
    println("Maximum = $max")
    println("Minimum = $min")
  else
    println("Please enter valid numbers")
  end

else 
  println("Please enter valid numbers")
end




