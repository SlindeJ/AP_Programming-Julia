print("Please enter the first resistance: ")
r1 = readline()      # resistance one
r1 = parse(Float64, r1)
print("Please enter the second resistance: ") 
r2 = readline()
r2 = parse(Float64, r2)
print("Please enter the third resistance: ") 
r3 = readline()
r3 = parse(Float64, r3)
print("Please enter the voltage: ")
voltage = readline()
voltage = parse(Float64, voltage)

amps1 = voltage / r1
amps2 = voltage / r2
amps3 = voltage / r3

total_amps = amps1 + amps2 + amps3

ohms = voltage / total_amps
ohms = round(ohms, digits = 2)

println("\nThe ohms = $ohms\n")


