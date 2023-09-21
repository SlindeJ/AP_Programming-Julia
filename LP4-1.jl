print("Enter the number of copies to be printed: ")
copies = readline()
copies = parse(Int64, copies)

if copies <= 99
  price = .30
end
if 99 < copies <= 499
  price = 0.28
end
if 499 < copies <= 749
  price = 0.27
end
if 749 < copies <= 1000
  price = 0.26
end
if 1000 < copies
  price = 0.25
end
tcost = copies * price


println("Price per copy is: $price")
println("Total cost is: $tcost")



