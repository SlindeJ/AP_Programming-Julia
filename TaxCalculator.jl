#Tax Calculator: Calculate owed taxes based on income and expenses.
print("\nPlease enter your income: ") 
income = parse(Int64, readline())
print("\nPlease enter which one applies to you (single, married filing jointly, married filing separeatly: ") 
status = readline()
function setBrackets(status) 
  for char in status
    if char == 's'  #single
      global a = [11000, 44725, 95375, 182100, 231250, 578125]  # top of the brackets 
    elseif char == 'j'  # married filing jointly
      global a = [22000, 89450, 190750, 364200, 462500, 693750]
    elseif char == 'p'  # married filing separetly
      global a = [11000, 44725, 95375, 182100, 231250, 346875]
    end
  end
end
function findTax(a, income) # 10, 12, 22, 24, 32, 35, 37
  bracket = a 
  finalTax = 0
  taxAmounts = [.1, .12, .22, .24, .32, .35, .37]
  loop_control_variable = 1
  spot = 0
  loop = true
  while loop
    if income < bracket[loop_control_variable]
      spot = loop_control_variable
      loop = false
      loop_control_variable -= 1
    end
    loop_control_variable += 1
    if loop_control_variable > length(bracket)
      loop = false
      spot = length(bracket)
    end
  end
  thingy = 1
  diff = 0
  while thingy < spot  # spot is the index where income < max bracket $$
    finalTax += taxAmounts[thingy] * (bracket[thingy] - diff)
    diff = bracket[thingy]
    print("\n#$(thingy) tax bracket tax is: $(finalTax)")
    thingy += 1
  end 
  if thingy == 1
    finalTax = taxAmounts[thingy] * income
  elseif income > bracket[thingy]
    finalTax += taxAmounts[thingy+1] * (income - bracket[thingy])  # dear god did this take forever to finish. took 3 hours to get the numbers just right
  else 
    finalTax += taxAmounts[thingy] * (income - bracket[thingy-1])
  end
  println("\n\nYou owe $(finalTax) in taxes\n")
end


# probably have setBrackets take in income and calculate tax per status in if statments

setBrackets(status) 
findTax(a, income)

