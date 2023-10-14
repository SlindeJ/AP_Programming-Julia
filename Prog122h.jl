function main()
  for i in range(1, 20)
    sqr = i^2
    _sqrt = round(sqrt(i), digits = 4)
    cbe = i^3
    frt = round(sqrt(_sqrt), digits = 4)
    println("$i\t\t\t$sqr\t\t\t$_sqrt\t\t\t$cbe\t\t\t$frt")
  end
end
main()