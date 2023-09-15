print("Enter the first time: ")
ft = readline()
ft = parse(Int64, ft)
print("Enter the second time: ")
st = readline()
st = parse(Int64, st)

if ft < st 
  diff = abs(ft - st)
  hours = trunc(diff/100)
  mins = diff%100
end
if ft > st
  diff = abs(ft - st)
  diff = (2400 - diff) - 40
  hours = trunc(diff/100)
  mins = diff%100
end
if st == ft
  println("There is no difference in time")
  diff = 0
  hours = 0
  mins = 0
end
println("$hours hours and $mins minutes")
