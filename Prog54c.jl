print("Please enter the radius: ")
rad = readline()
rad = parse(Float64, rad)
PI = 3.14159

area = PI * rad^2
circum = 2 * PI * rad
area = round(area, digits = 3)
circum = round(circum, digits = 3)
println("\nThe area of the circle is $area")
println("The circumference is $circum")

