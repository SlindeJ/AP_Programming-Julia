# Create task project will be a recipe organizer
# I will use my code from TaskScheduler to store the data in a separate data file 
# there will be a list to store the name of the recipes and a list in that list that holds the ingredient list of that recipe
# import Pkg; Pkg.add("FileIO")
using FileIO
# import Pkg; Pkg.add("JLD2")
using JLD2
global recipeList
recipeList = [["recipe name", ["ingredient 1", "ingredient 2"]], ["recipe name 2", ["ingredient 1.2", "ingredient 2.2"]]]
println("This is a program to help assist you with organizing your recipes")
function saveList(recipeList)
  save("recipies.jld2", "recipeList")
end
saveList(recipeList)

function createRecipe()
end

function deleteRecipe()
end

function changeRecipe()
end

function findRecipe()
end

println("Enter t to create a recipe, enter f to find a recipe in the list, enter d to delete a recipe, s to save the recipe list, enter end to end the program.")
function main()
  response = ""
  print("\nWhat would you like to do?: ") 
  response = readline() 
  if response == "end" 
    println("End of program.")
    global _end = true
  elseif response == "t"
    createRecipe()
  elseif response == "f"
    findRecipe()
  elseif response == "d"
    deleteRecipe()
  elseif response == "s"
    saveList(recipeList)
  # elseif response == "clear"
  #   clear_Tasks()
  else
    println("Please enter a valid choice")
  end
end