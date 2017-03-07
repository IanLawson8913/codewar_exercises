def high_and_low(numbers)
  nums = numbers.split.map(&:to_i).sort
  "#{nums[-1]} #{nums[0]}"
end

p high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6")