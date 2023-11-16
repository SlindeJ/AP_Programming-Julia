# julia MSOE2011-5.jl
# thingy = x - f(x)/f'(x)
#x = 3
#f(x) = 2x - 1 
#println(f(x))    /    5

print("Please enter guess: ") 
x = parse(Float64, readline())

# y = f(x) = a<6?x^6 + a<5?x^5 + ... + a<0? 
# f'(x) = 6a<6?x^5 + 5a<5?x^4 + ... + a<1? 

function derive(x) 
  a_6_ = -0.09    # these are exact
  a_5_ = 1.6108
  a_4_ = -10.9167
  a_3_ = 34.7625
  a_2_ = -52.0433
  a_1_ = 31.1767
  a_0_ = -4
  f(x) = a_6_*x^6 + a_5_*x^5 + a_4_*x^4 + a_3_*x^3 + a_2_*x^2 + a_1_*x + a_0_
  fp(x) = 6a_6_*x^5 + 5a_5_*x^4 + 4a_4_*x^3 + 3a_3_*x^2 + 2a_2_*x + a_1_
  println("Position: f($x) = $(f(x))")
  thingy = x - f(x)/fp(x)
  if abs(f(thingy)) > 0.001
    derive(thingy)
  else
    println("Refined Zero: f($thingy) = $(f(thingy))")
  end
end
derive(x)

