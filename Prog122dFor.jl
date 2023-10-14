function main()
  
  for x in range(-12, 16)  #end is INCLUSIVE
    num1 = x^6 - 3x^5 - 93x^4 + 87x^3 + 1596x^2 - 1380x - 2800
    println("$x\t\t\t$num1")
  end
end
main()