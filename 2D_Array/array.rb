def find_by_index array, row, column
  array[row][column]
end

def find_by_value array, value
  m = array.length
  n = array[0].length

  n.times do |i|
    m.times do |j|
      return [i, j] if array[i][j] == value
    end
  end

  nil
rescue
  nil
end

def sum_by_row array, row_index
  return array[row_index].sum
rescue
  nil
end

def sum_by_column array, column_index
  return array.map{ |row| row[column_index] }.sum
rescue
  nil
end

def transpose array
  m = array.length
  n = array[0].length

  transposed_array = Array.new(n) { Array.new(m) }

  n.times do |i|
    m.times do |j|
      transposed_array[i][j] = array[j][i]
    end
  end

  return transposed_array
end

sample = [
  [1,  2,  3,  4],
  [5,  6,  7,  8],
  [9, 10, 11, 12]
]

puts find_by_index(sample, 2, 3) == 12                # true
puts find_by_value(sample, 7) == [1, 2]               # true
puts find_by_value(sample, 99).nil?                   # true
puts sum_by_row(sample, 0) == 10                      # true (1+2+3+4)
puts sum_by_column(sample, 2) == 21                   # true (3+7+11)
puts transpose(sample) == [
  [1, 5,  9],
  [2, 6, 10],
  [3, 7, 11],
  [4, 8, 12]
]                                                     # true
