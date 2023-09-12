print("Number 1: ")
num1 = readline()
num1 = parse(Int, num1)
print("Number 2: ")
num2 = readline()
num2 = parse(Int, num2)
print("Number 3: ")
num3 = readline()
num3 = parse(Int, num3)
print("Number 4: ")
num4 = readline()
num4 = parse(Int, num4)

summ = num1 + num2 + num3 + num4
average = summ / 4

println("\nThe sum is: $summ")
println("The average is $average")
