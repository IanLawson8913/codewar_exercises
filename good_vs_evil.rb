# input: two arguments - strings depicting numbers of each race
# output: Return -  "Battle Result: Good triumphs over Evil" if good wins, 
# =>                "Battle Result: Evil eradicates all trace of Good" if evil wins
# =>                "Battle Result: No victor on this battle field" if it ends in a tie

# create collection to store power of each race for good / evil (2 arrays)
# convert argument as string to array that matches format of previous array

# iterate through second array and transform array with score
# -- each element: number of race * power level

# add elements together
# -- return result based on conditional

def goodVsEvil(good, evil)
  good_pwr = [1, 2, 3, 3, 4, 10]
  evil_pwr = [1, 2, 2, 2, 3, 5, 10]
  good = good.split.map(&:to_i)
  evil = evil.split.map(&:to_i)

  good = good.map!.with_index { |num, idx| num * good_pwr[idx] }.reduce(:+)
  evil = evil.map!.with_index { |num, idx| num * evil_pwr[idx] }.reduce(:+)
  if good > evil
    'Battle Result: Good triumphs over Evil'
  elsif evil > good
    'Battle Result: Evil eradicates all trace of Good'
  elsif evil == good
    'Battle Result: No victor on this battle field'
  end
end

p goodVsEvil('1 0 0 0 0 0', '1 0 0 0 0 0 0')
p goodVsEvil('0 0 0 0 0 10', '0 1 1 1 1 0 0')
p goodVsEvil('0 0 0 0 0 10', '0 1 1 1 1 0 0')

def total_worth(counts, worth_table)
  counts.split.each_with_index.reduce(0) { |sum, (c, i)| sum + ( worth_table[i] * c.to_i ) }
end 

def goodVsEvil(good, evil)
  case total_worth(good, [1,2,3,3,4,10]) <=> total_worth(evil, [1, 2, 2, 2, 3, 5, 10])
  when 1 then "Battle Result: Good triumphs over Evil"
  when -1 then "Battle Result: Evil eradicates all trace of Good"
  when 0 then "Battle Result: No victor on this battle field"
  end 
end