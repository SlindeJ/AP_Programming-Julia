print("Please enter the positive integer: ")
n = readline()
n = parse(Int64, n)

function gcd(a, b)
  if a == 0
    return b 
  return gcd(b % a, a)
  end
end

function phi(n)
  result = 1
  for i in range(2, n - 1)
    if gcd(i, n) == 1
      result += 1
      end
    return result
    end
  end


for n in range(1, 10 - 1)
  println("phi($n) = ", phi(n))
end
