# the first 7 numbers are the number of hits mon-sun, the last 7 are the bats between mon-sun
# julia Prog505dHelper/Prog505d.jl 


function first_Half()
  avgmon = 0
  f = open("Prog505dHelper/Prog505d.txt", "r")
  for lines in readlines(f)
    a = split(lines, " ")
    avgmon = round((parse(Int64, a[3])), digits = 2) / (round((parse(Int64, a[3+7])), digits = 2))
    println("$(a[1]) $(a[2]) $avgmon")
  end
end

first_Half()



