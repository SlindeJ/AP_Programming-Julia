# Create task project will be a recipe organizer
# I will use my code from TaskScheduler to store the data in a separate data file 
# there will be a list to store the name of the recipes and a list in that list that holds the ingredient list of that recipe
#import Pkg; Pkg.add("FileIO")
using FileIO
#import Pkg; Pkg.add("JLD2")
using JLD2
global recipeList
recipeList = [["recipe name", ["ingredient 1", "ingredient 2"]], ["recipe name 2", ["ingredient 1.2", "ingredient 2.2"]]]
println("This is a program to help assist you with organizing your recipes")
function saveList(recipeList)
  save("recipies.jld2", "recipeList")
  println("save")
end
# saveList(recipeList)

function createRecipe()
  println("create")
  println("What is the recipe called? ")
  recipeName = readline()
  ingredients = []
  println("What are the ingredients and amounts? (type end to finish list)")
  moreIngredients = true
  while moreIngredients
    ingredient = readline()
    if ingredient == "end"
      moreIngredients = false
    else
      append!(ingredients, [ingredient])
      println(ingredients)
    end
  end
  recipe = [recipeName, ingredients]
  append!(recipeList, recipe)     # fix here 
end

function viewRecipe()
  for recip in recipeList
    println(recip)
  end
end

function deleteRecipe()
  print("delete")
end

function changeRecipe()
  print("change")
end

function findRecipe()
  # for every recipe in list, if "recipeName" == "userSearch", display it
  print("find")
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
    viewRecipe()
  else
    println("Please enter a valid choice")
  end
end


_end = false
while !_end
  main()
end