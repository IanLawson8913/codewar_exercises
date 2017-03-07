# input: array of 9 nested arrays of nine integers (1-9)
# output: (output or return)? string 'Finished!' or 'Try again!'

# finished if: 
# => each nested array has num 0-9 each used only once
# => each column has num 0-9 each used only once
# => each 3x3 block as well

DIGITS = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def columns(arr)
  columns_arr = Array.new(9) { Array.new }
  
  arr.each do |row|
    9.times do |idx|
      columns_arr[idx] << row[idx]
    end
  end
  columns_arr
end

def squares(arr)
  rows = arr
  squares = Array.new(9) { Array.new }
  x = 0
  
  while x <= arr.length
    three_rows = arr[x, 3]
    three_rows.each do |row|
      row.each_with_index do |num, idx|
        if (0..2).include?(idx)
          squares[x] << num
        elsif (3..5).include?(idx)
          squares[x+1] << num
        elsif (6..8).include?(idx)
          squares[x+2] << num
        end 
      end
    end
    x += 3
  end
  
  squares
end

def done_or_not(arr)
  arr.each do |row|
    return 'Try again!' if row.sort != DIGITS
  end
  columns(arr).each do |column|
    return 'Try again!' if column.sort != DIGITS
  end
  squares(arr).each do |square|
    return 'Try again!' if square.sort != DIGITS
  end
  'Finished!'
end

p done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
               [6, 7, 2, 1, 9, 5, 3, 4, 8],
               [1, 9, 8, 3, 4, 2, 5, 6, 7],
               [8, 5, 9, 7, 6, 1, 4, 2, 3],
               [4, 2, 6, 8, 5, 3, 7, 9, 1],
               [7, 1, 3, 9, 2, 4, 8, 5, 6],
               [9, 6, 1, 5, 3, 7, 2, 8, 4],
               [2, 8, 7, 4, 1, 9, 6, 3, 5],
               [3, 4, 5, 2, 8, 6, 1, 7, 9]]) # 'Finished!')
      
p done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
               [6, 7, 2, 1, 9, 0, 3, 4, 9],
               [1, 0, 0, 3, 4, 2, 5, 6, 0],
               [8, 5, 9, 7, 6, 1, 0, 2, 0],
               [4, 2, 6, 8, 5, 3, 7, 9, 1],
               [7, 1, 3, 9, 2, 4, 8, 5, 6],
               [9, 0, 1, 5, 3, 7, 2, 1, 4],
               [2, 8, 7, 4, 1, 9, 6, 3, 5],
               [3, 0, 0, 4, 8, 1, 1, 7, 9]]) # 'Try again!')