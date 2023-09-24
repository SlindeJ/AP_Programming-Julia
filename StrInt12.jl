print("Please enter a sentence to reverse: ")
str = readline()
println(" ")
function reverseword(str)
  a = Array{String}(undef, 0)
  strintend = 1
  strintbegin = 1
# need to take in a string and reverse the order of the words in it: like "dont want to" to "to want dont" 
#make the revstr string
  str = string(str, " ")
  for s in str  # for every char in string
    if s == ' '    # could use push!(), but I think pushfirst!() work better
      word = str[strintbegin:strintend]
      pushfirst!(a, word)
     strintbegin = strintend
    end
    strintend += 1
  #string array
  # need to save an array to something like ?? = [word1, word2, word3...]
  
  end
  for i in a
    print("$i")
  end
  println(" ")
end

reverseword(str)

  