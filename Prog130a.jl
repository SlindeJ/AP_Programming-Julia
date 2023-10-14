function main()
  print("Please enter number: ")
  num1 = readline()
  num1 = parse(Int64, num1)
  atps = 0
  while num1 != 1
    if iseven(num1)
      i = num1
      num1 = num1/2
      println("$i is even, so I take half: $num1")
      atps += 1
    else 
      i = num1
      num1 = 3num1 + 1
      println("$i is odd, so I make 3n+1: $num1")
      atps += 1
    end
  end
  println("This process took $atps steps to reach 1")
end
main()
