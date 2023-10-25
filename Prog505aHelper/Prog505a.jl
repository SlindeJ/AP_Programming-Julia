f = open("Prog505aHelper/Prog505a.txt", "r")
# s = read(f, String)
# # println(s[1:15])
# f = open("Prog505a.txt", "r")





# a = "potato"
# println(a[1:2])
# This works with a string

function displayContest()
  sum = 0 # do with info, += nums
  divisors = 0 # += 1 for every num
  #read in info
  most_points = 0
  total_points = 0
  winner = ""
  for lines in readlines(f)
    woohoo! = split(lines, " ")      #USE THIS IT IS NESSISSARRYYYYYYY!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    fn = woohoo![1]
    ln = woohoo![2]
    books = parse(Int, woohoo![3])      

    sum += books
    divisors += 1
    if books <= 3
      points = 10 * books
    end
    if 3 < books <= 6
      points = 30 + (books-3) * 15
    end
    if 6 < books
      points = 30 + 45 + (books-6) * 20
    end
    total_points += points
    if points > most_points
      most_points = points
      winner = "$fn $ln"
    end

    println("$fn $ln, books read = $books  points = $points")
  end
  avg = total_points / divisors
  println("$sum books were read in total")
  println("Average points per reader is $avg")
  println("The winner of the constest is $winner")
  
  
end
displayContest()


