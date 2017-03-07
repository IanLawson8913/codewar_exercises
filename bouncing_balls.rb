# inputs: 
# height of initial drop
# bounce height for each bounce after
# height of mom

# output: integer -  how many times ball passes height of mom

# variables:
# - max height of ball at top of bounce / start of problem
# - counter for how many times it passes mom

def bouncingBall(h, bounce, window)
  counter = 1 # initial fall
  error = -1
  return error if h <= 0 ||
    bounce <= 0 || 
    bounce >= 1 ||
    window >= h
  
  loop do
    h *= bounce
    break if h < window
    counter += 2
  end
  counter
end

p bouncingBall(3, 0.66, 1.5)
p bouncingBall(30, 0.66, 1.5)
p bouncingBall(3, 1, 1.5)