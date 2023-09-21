print("Please enter the weight in kilograms: ")
weight = readline()
weight = parse(Int16, weight)
print("Please enter package length in centimeters: ")
len = readline()
len = parse(Int32, len)
print("Please enter package width in centimeters: ")
wid = readline()
wid = parse(Int32, wid)
print("Please enter package height in centimeters: ")
height = readline()
height = parse(Int32, height)

size = len * wid * height

if (weight > 27)
  println("Package too heavy")
end
if (size > 100000)
  println("Package too large")
end
if (weight <= 27)
  if (size <= 100000)
    println("The package is acceptable")
  end
end

