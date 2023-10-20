print("Please enter the first word: ")
str1 = readline()
print("Please enter a second word to search for: ")
str2 = readline()
function checkString(str1, str2)
  word1 = str1
  word2 = str2
  repeats = 0
  for lcv in range(1, length(word1)-length(word2)+1)
    if word1[lcv:length(word2)+lcv-1] == word2
      repeats += 1
    end
  end
  if repeats > 0
    println("$word2 fits into $word1 $repeats times")
  end
end

if length(str2) <= length(str1)
  checkString(str1, str2)
else
  println("$str2 cannot fit in $str1")
end
