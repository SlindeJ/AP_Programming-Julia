
function riemannsum()
  function f(x)
    return exp(-x*x/2)/sqrt(2*3.14159)
  end
  print("Please enter x boundry a: ")
  a = readline()
  a = parse(Int64, a)
  print("Please enter x boundry b: ")
  b = readline() 
  b = parse(Int64, b)
  print("Please enter the number of panels you desire: ")
  n = readline()
  n = parse(Int64, n)
  fx = 0
  h = (b-a)/n
  for lcv in range(0, n-1)
    fx += f((a+lcv*h))
  end
  println("The area is $fx")
end
riemannsum()
    
    

