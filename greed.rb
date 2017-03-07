# input: roll; array of 5 numbers (1 - 6)
# output: score; integer

# scoring rules
# -- if there are three of any digit
# -- -- single digit score is not counted and triple score is
# -- one 1 or 5 ; 100, 50

# create collection of triple scores; and collection for roll
# iterate through roll and add to roll hash
# return score based on iteration through roll hash
# -- (frequency / 3) * triple score + (frequency % 3 * single score)
# return total score

TRIPLE = { 1 => 1000, 6 => 600, 5 => 500, 4 => 400, 3 => 300, 2 => 200 }
NUMS = (1..6).to_a

def score(roll)
  total = 0
  totals = {}
  NUMS.each { |num| totals[num] = 0 + roll.count(num) }
  
  totals.each do |num, freq|
    total += (freq / 3) * TRIPLE[num]
    case num
    when 1
      total += (freq % 3) * 100
    when 5 
      total += (freq % 3) * 50
    end
  end
  
  total
end

p score( [2, 3, 4, 6, 2] ) # 0
p score( [2, 2, 2, 3, 3] ) # 200
p score( [2, 4, 4, 5, 4] ) # 450