println("What is the length? ")
len = readline()
len = parse(Int, len)
println("What is the width? ")
wid = readline()
wid = parse(Int, wid)
area = len * wid
perim = 2 * len + 2 * wid
println("The area is: $(area)")
println("The perimeter is: $(perim)")
