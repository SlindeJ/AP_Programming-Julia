# Create task project will be a recipe organizer
#import Pkg; Pkg.add("FileIO")
using FileIO
#import Pkg; Pkg.add("JLD2")
#using JLD2
global recipeList
recipeList = Array{Any}(undef, 0)
println("This is a program to help assist you with organizing your recipes\n")

function loadList()
  io = open("recipes.jld2", "r") # read
  file = read(io, String)
  rList = []
  rList = split(file, "\n")
  recipeName = ""
  i = 1
  while i < length(rList)
    ingredients = []
    recipeName = rList[i]
    i += 1
    while rList[i] != "end"
      append!(ingredients, [rList[i]])
      i += 1
    end
    i += 1 
    append!(recipeList, [[recipeName, ingredients]])
  end
  close(io)
end
loadList()

function saveList()
  io = open("recipes.jld2", "w") # write
  for r in recipeList
    write(io, r[1])
    for i in r[2]
      write(io, "\n")
      write(io, i)
    end
    write(io, "\nend\n")
  end
  close(io)
  println("\nRecipe List Saved")
end

function createRecipe()
  println("What is the recipe called? ")
  recipeName = readline()
  if recipeName == "end"
    recipeName = "END"
  end
  # find out how to stop identical recipe name from being added
  ingredients = []
  println("What are the ingredients and amounts? (type 'end' to finish list)")
  moreIngredients = true
  while moreIngredients
    ingredient = readline()
    if ingredient == "end"
      moreIngredients = false
    else
      append!(ingredients, [ingredient])
    end
  end
  recipe = [[recipeName, ingredients]]
  append!(recipeList, recipe)
end

function viewRecipe(displayed)
  for recip in recipeList
    println(recip[1])
    if displayed == "y"
      for ingred in recip[2]
        println(ingred)
      end
      println()
    end
  end
end

#########

function returnRecipeIndex(recipeName)
  for r in range(1, length(recipeList))
    if recipeList[r][1] == recipeName
      return r
    end
  end
end

#########

function deleteRecipe()
  println("Please enter the name of the recipe you want to remove")
  recipeDelete = readline()
  try
    deleteat!(recipeList, returnRecipeIndex(recipeDelete))
  catch
    println("That does not exist in the list")
  end
end

function changeRecipe()
  print("change")
end

function findRecipe()  # have a display for trying to find a recipe that does not exist
  println("Please enter the name of the recipe you are searching for")
  recipeSearch = readline()
  for recip in recipeList
    if recip[1] == recipeSearch
      println("\nThe recipe is:")
      println(recip[1])
        for ingred in recip[2]
          println(ingred)
        end
        println()
      end
  end
end

println("Enter c to create a recipe, enter f to find a recipe in the list, enter d to delete a recipe, s to save the recipe list, enter end to end the program.")
function main()
  response = ""
  print("\nWhat would you like to do?: ") 
  response = readline() 
  if response == "end" 
    println("End of program.")
    global _end = true
  elseif response == "c"
    createRecipe()
  elseif response == "f"
    findRecipe()
  elseif response == "d"
    deleteRecipe()
  elseif response == "s"
    saveList()
  elseif response == "v"
    println("Would you like to view with the ingredients displayed? (y/n)")
    displayed = readline()
    viewRecipe(displayed)
  else
    println("Please enter a valid choice")
  end
end


_end = false
while !_end
  main()
end