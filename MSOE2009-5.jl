import Pkg; Pkg.add("Primes")
using Primes

print("Please enter a number: ")
num = parse(Int, readline())
if isprime(num)
  println("$num is prime")
else
  println("$num is not prime")
end