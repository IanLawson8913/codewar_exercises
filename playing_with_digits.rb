def dig_pow(n, p)
  digits = n.to_s.chars.map(&:to_i)
  powers = []

  digits.length.times { |x| powers << (digits.shift**(x + p)) }

  sum = powers.reduce(:+)
  if (sum % n).zero?
    sum / n
  else
    -1
  end
end

p dig_pow(89, 1)
p dig_pow(92, 1)
p dig_pow(46288, 3)
