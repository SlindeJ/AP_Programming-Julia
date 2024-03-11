# julia TaskScheduler.jl
#import Pkg; Pkg.add("DataStructures")
using DataStructures
#Pkg.add("DataStructures")
# import Pkg; Pkg.add("FileIO")
using FileIO
# Pkg.add("FileIO")
#import Pkg; Pkg.add("JLD2")
using JLD2
#Pkg.add("JLD2")
# no crocodile and a poptart
# Priority que 
println("This is a program to help you organize your tasks.")
println("Enter t to create task, enter v to view the task list, enter d to delete task, s to save task list, enter clear to clear all tasks, enter end to end the program.")
pq = PriorityQueue{}(Base.Order.Forward)
for (element, priority) in load("TaskList.jld2")
  enqueue!(pq, element=>priority)
end
# The program should only use math, conditions, and loops, and MUST have a function with variable arguments, and something involving a list and searching, sorting, or iterating through the list.

# doing a task manager based on due date and importance
# going to try to save the information into a different data file
# I think an overdue mechanic would work well too (vetoed) 
function create_Task()
  print("Please enter the task name: ")
  task = readline()
  if haskey(pq, task)
    println("Task must have unique name")
  else
    print("Please enter the task's importance(1-10): ")
    try
      importance = parse(Int64, readline())
      if importance < 1
        importance = 1
      elseif importance > 10
        importance = 10
      end
      enqueue!(pq, task=>importance)
    catch
      println("Priority must be a whole number")
    end
  end
end



function clear_Tasks()
  empty!(pq)
  println("All tasks removed")
end



function save_Tasks(pq)
  save("TaskList.jld2", pq)
end


function view_Tasks()
  println("\n")
  for (element, priority) in pq
    println("\t\tTask Name: $element \t Priority: $priority")
  end
  print("\n")
end



function delete_Task()
  print("What task would you like to remove?: ")
  local response = readline()
  try
    delete!(pq, response)
    println("removed $response from tasks")
  catch
    println("Could not find task named $response")
  end
end



function main() 
  response = ""
  print("\nWhat would you like to do?: ") 
  response = readline() 
  if response == "end" 
    println("End of program.")
    global _end = true
  elseif response == "t"
    create_Task()
  elseif response == "v"
    view_Tasks()
  elseif response == "d"
    delete_Task()
  elseif response == "s"
    save_Tasks(pq)
  elseif response == "clear"
    clear_Tasks()
  else
    println("Please enter a valid function")
  end
end



_end = false
while _end != true
  main()
end
