# input: array of directions
# output: simplified version of array

# rules: if a direction is followed by it's opposite, both are removed from array

# iterate through array, two adjacent elements at a time
# -- if adjacent elements are opposites, elements are deleted from array
# -- -- iteration repeats
# -- if are not opposites, next two are compared for equality
# -- -- if they are not opposites move to next two
# -- -- -- until opposites are found or reach end of array
# -- if no changes were made return array

# require 'pry'

# def dirReduc(arr)
#   opp = {"NORTH"=>"SOUTH", "SOUTH"=>"NORTH",
#         "EAST"=>"WEST", "WEST"=>"EAST"
#   }
#   idx = 0
#   loop do
#     if opp[arr[idx]] == arr[idx+1]
#       arr.slice!(idx, 2)
#       idx = 0
#     else
#       idx += 1
#     end
#     break if idx > (arr.length - 2)
#   end
#   arr
# end

# a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
# u = ["NORTH", "WEST", "SOUTH", "EAST"]

# p dirReduc(a) # ["WEST"]
# p dirReduc(u) # ["NORTH", "WEST", "SOUTH", "EAST"]

# Create collection of opposite directions
# Create collection that will contain directions added via loop mechanism
# -- collection contains first el from arr, remove that el from arr
# Iterate through arr and add elements one by one starting from new first arr el
# -- if arr el is opposite of last element in container, delete el from arr and container
# -- if arr el is not opposite add to container
# Return container collection

require 'pry'

OPP = {"NORTH"=>"SOUTH",
       "SOUTH"=>"NORTH",
       "EAST"=>"WEST",
       "WEST"=>"EAST"
}

def dirReduc(arr)
  container = [arr.shift]
  loop do
    container << arr.shift
    container.pop(2) if (OPP[container[-2]] == container[-1])
    # binding.pry
    break if arr.length == 0
  end
  container
end

a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
u = ["NORTH", "WEST", "SOUTH", "EAST"]
p dirReduc(a) # ["WEST"]
p dirReduc(u) # ["NORTH", "WEST", "SOUTH", "EAST"]
