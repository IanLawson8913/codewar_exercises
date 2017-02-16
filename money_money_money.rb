# method that takes 4 arguments:
# -- principal: total starting money
# -- interest: percentage of prinicpal added to total each year
# -- tax: percentage of interest taken from total each year
# -- desired: stop program when total gets to this number or higher

# -- each iteration = one year
# return number of years it takes for total to >= desired

def calculate_years(principal, interest, tax, desired)
  total = principal
  years = 0
  loop do
    break if total >= desired
    total_interest = total*interest
    total += total_interest
    total -= total_interest*tax
    years += 1
  end
  years
end

p calculate_years(1000, 0.05, 0.18, 1000)
p calculate_years(1000, 0.05, 0.18, 1100)
p calculate_years(1000,0.01625,0.18,1200)
p calculate_years(1000,0.05,0.18,1000)

