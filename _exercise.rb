def max_redigit(num)
  num.to_s.chars.sort.reverse.join.to_i
end