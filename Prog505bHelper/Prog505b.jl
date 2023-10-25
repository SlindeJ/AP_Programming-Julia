# julia Prog505bHelper/Prog505b.jl
# try having all grades for ABCDEF's set to false and turn to true and add at end to calculate final grade total amounts
aGrade = 0
bGrade = 0
cGrade = 0
dGrade = 0
fGrade = 0
global function number_Grade(iv) # takes in initial value
  nGrade = iv
  if nGrade >= 90
    global aGrade += 1
    return "A"
  elseif 80 <= nGrade < 90
    global bGrade += 1
    return "B"
  elseif 70 <= nGrade < 80
    global cGrade += 1
    return "C"
  elseif 60 <= nGrade < 70
    global dGrade += 1
    return "D"
  else 
    global fGrade += 1
    return "F"
  end
end

function each_Student()
  lcv = 0
  test1 = 0
  test2 = 0
  test3 = 0
  test4 = 0
  test5 = 0
  tavg = 0
  t1t = 0
  t2t = 0
  t3t = 0
  t4t = 0
  t5t = 0
  tgrade = ""
  a = []
  # while !eof(f) ...
  
  f = open("Prog505bHelper/Prog505b.txt", "r")
  # may have to make a huge array
  for lines in readlines(f)
    push!(a, lines)
  end
  while lcv < length(a)
    test1 = parse(Int64, a[3+lcv])
    t1t += test1          # test one total
    test2 = parse(Int64, a[4+lcv])
    t2t += test2
    test3 = parse(Int64, a[5+lcv])
    t3t += test3
    test4 = parse(Int64, a[6+lcv])
    t4t += test4
    test5 = parse(Int64, a[7+lcv])
    t5t += test5
    tavg = (test1 + test2 + test3 + test4 + test5) / 5
    tgrade = number_Grade(tavg) 
    println("$(a[1+lcv]) $(a[2+lcv]) \t\t$test1  $test2  $test3  $test4  $test5  $tavg\t\t$(tgrade)")
    lcv += 7
  end
  println("\n\nTest 1\t\t\t$(round(t1t / 3, digits = 2))\t\t$(aGrade)")
  println("Test 2\t\t\t$(round(t2t / 3, digits = 2))\t\t$(bGrade)")
  println("Test 3\t\t\t$(round(t3t / 3, digits = 2))\t\t$(cGrade)")
  println("Test 4\t\t\t$(round(t4t / 3, digits = 2))\t\t$(dGrade)")
  println("Test 5\t\t\t$(round(t5t / 3, digits = 2))\t\t$(fGrade)")
end
each_Student()


#I love this thing
# a = []
# push!(a, 7)
# push!(a, "hello")
# println(a)

# aGrade = 0
# bGrade = 0
# cGrade = 0
# dGrade = 0
# eGrade = 0

# global function number_Grade(iv) # takes in initial value
#   nGrade = parse(Int64, iv)
#   if nGrade >= 90
#     global aGrade += 1
#     return "A"
#   elseif 80 <= nGrade < 90
#     global bGrade += 1
#     return "B"
#   elseif 70 <= nGrade < 80
#     global cGrade += 1
#     return "C"
#   elseif 60 <= nGrade < 70
#     global dGrade += 1
#     return "D"
#   else 
#     global fGrade += 1
#     return "F"
#   end
# end

