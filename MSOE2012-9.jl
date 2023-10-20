
function roman_to_arabic()
  
  print("Please enter a number in roman numeral format: ")
  num = readline()
  #IVXLCDM
  
  value = 0
  function romanConvert(char)
    char = uppercase(char)
    if char == 'I'
      return 1
    elseif char == 'V'
      return 5
    elseif char == 'X' 
      return 10
    elseif char == 'L' 
      return 50
    elseif char == 'C' 
      return 100
    elseif char == 'D' 
      return 500
    elseif char == 'M' 
      return 1000
    else 
      println("Invalid number '$char'")
      return 0
    end
  end

  
  for lcv in range(1, length(num)-1)
    charV = romanConvert(num[lcv])    # the char value
    charN = romanConvert(num[lcv+1])  # next char value
    if charV < charN || charV == charN
      if ((charN / charV) == 10) || ((charN / charV) == 5)
        
        value += (charN - charV)
          # if valid roman
      elseif charV == charN      # finish this part, test with iix
        println("Invalid order")
      else
        println("Invalid order")
      end
    else
      value += charV
    end
  end
  # value += romanConvert(num[length(num)])
  println(value)
end
roman_to_arabic()
