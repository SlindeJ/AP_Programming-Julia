print("Enter the number of eggs purchased: ")
eggs = readline()
eggs = parse(Float64, eggs)

dozen = eggs / 12

if (0 < dozen < 4)
  cost = 0.5
end
if (4 <= dozen < 6)
  cost = 0.45
end
if (6 <= dozen < 11)
  cost = 0.40
end
if (11 <= dozen)
  cost = 0.35
end
price = dozen * cost
price = round(price, digits = 2)

println("The bill is equal to: $price")
