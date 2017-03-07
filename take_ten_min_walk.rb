# input: array of strings representing East, South, North, West
# output: true or false depending on:

# total number of directions must equal 10
# -- count number of each direction
# total of each direction must be either:
# -- 0
# -- equal to the count of all other non-zero directions

def isValidWalk(walk)
  directions = %w(n s e w)
  sum = directions.map { |direction| walk.count(direction) }
  
  return false if walk.length != 10 || 
    sum[0] != sum[1] || 
    sum[2] != sum[3]
  true
end

p isValidWalk(['n','s','n','s','n','s','n','s','n','s'])
p !isValidWalk(['w','e','w','e','w','e','w','e','w','e','w','e'])
p isValidWalk(['w'])
p isValidWalk(['n','n','n','s','n','s','n','s','n','s'])

p isValidWalk(['n','s','n','s','n','s','n','s','w','e'])

# top answer

def isValidWalk(walk)
  walk.count('w') == walk.count('e') and
  walk.count('n') == walk.count('s') and
  walk.count == 10
end