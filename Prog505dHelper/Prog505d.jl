# the first 7 numbers are the number of hits mon-sun, the last 7 are the bats between mon-sun
# julia Prog505dHelper/Prog505d.jl 


function first_Half()
  avgmon = 0
  avgtue = 0
  avgwed = 0
  avgthu = 0
  avgfri = 0
  avgsat = 0
  avgsun = 0
  monbats = 0
  tuebats = 0
  wedbats = 0
  thubats = 0
  fribats = 0
  satbats = 0
  sunbats = 0
  f = open("Prog505dHelper/Prog505d.txt", "r")
  for lines in readlines(f)
    a = split(lines, " ")
    avgmon = round(parse(Int64, a[3]) / (parse(Int64, a[3+7])), digits = 3)  # make it round
    avgtue = round(parse(Int64, a[4]) / (parse(Int64, a[4+7])), digits = 3)
    avgwed = round(parse(Int64, a[5]) / (parse(Int64, a[5+7])), digits = 3)
    avgthu = round(parse(Int64, a[6]) / (parse(Int64, a[6+7])), digits = 3)
    avgfri = round(parse(Int64, a[7]) / (parse(Int64, a[7+7])), digits = 3)
    avgsat = round(parse(Int64, a[8]) / (parse(Int64, a[8+7])), digits = 3)
    avgsun = round(parse(Int64, a[9]) / (parse(Int64, a[9+7])), digits = 3)
    println("$(a[1]) $(a[2]) $avgmon $avgtue $avgwed $avgthu $avgfri $avgsat $avgsun")
  end
  # finish here
  f = open("Prog505dHelper/Prog505d.txt", "r")
  for lines in readlines(f)
    a = split(lines, " ") 
    monbats += parse(Int64, a[3])
    tuebats += parse(Int64, a[4])
    wedbats += parse(Int64, a[5])
    thubats += parse(Int64, a[6])
    fribats += parse(Int64, a[7])
    satbats += parse(Int64, a[8])
    sunbats += parse(Int64, a[9])
  end
  #have first half of 2nd page, need to get a[num+7] and div the bats by that. use abg code for formatting. 
  println(monbats)
end

first_Half()



