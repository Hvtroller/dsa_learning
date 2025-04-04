def sum_of_digits(n)
  return puts "Not a number" unless n.instance_of?(Integer)

  sum = 0

  for char in n.to_s.chars
    sum += char.to_i
  end
  # sum = n.to_s.chars.map(&:to_i).sum

  puts sum
end

def test_sum_of_digits(n, expected_output)
  print "sum_of_digits(#{n}) => "
  result = sum_of_digits(n)
  puts "#{result}, Expected: #{expected_output}\n\n"
end

puts "--- Test Cases for sum_of_digits ---"

# 1. Simple positive number
test_sum_of_digits(123, 6)  # 1 + 2 + 3 = 6

# 2. Single digit
test_sum_of_digits(5, 5)  # Single digit number, sum is the number itself

# 3. Negative number
test_sum_of_digits(-456, 15)  # 4 + 5 + 6 = 15 (absolute value of -456)

# 4. Number with leading zeros
test_sum_of_digits(007, 7)  # 0 + 0 + 7 = 7 (leading zeros don't affect sum)

# 5. Large number
test_sum_of_digits(987654321, 45)  # 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 = 45

# 6. Zero input
test_sum_of_digits(0, 0)  # sum of digits for 0 is 0

# 7. Number with many digits
test_sum_of_digits(1234567890, 45)  # 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 0 = 45

# 8. Large negative number
test_sum_of_digits(-123456789, 45)  # 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 = 45

# 9. Single digit negative number
test_sum_of_digits(-9, 9)  # Sum of digits for -9 is 9

# 10. Number with zeros in between
test_sum_of_digits(100200300, 6)  # 1 + 0 + 0 + 2 + 0 + 0 + 3 + 0 + 0 = 6
