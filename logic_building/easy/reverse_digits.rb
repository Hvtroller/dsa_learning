def reverse_digits n
  return puts "Not a number" unless n.instance_of?(Integer)

  tracker = n < 0 ? -1 : 1

  puts n.to_s.reverse.to_i * tracker
end

def test_reverse_digits(n, expected_output)
  print "reverse_digits(#{n}) => "
  result = reverse_digits(n)
  puts "#{result}, Expected: #{expected_output}\n\n"
end

puts "--- Test Cases for reverse_digits ---"

# 1. Simple positive number
test_reverse_digits(123, 321)  # Reversed 123 is 321

# 2. Single digit number (no change expected)
test_reverse_digits(5, 5)  # Reversed 5 is 5

# 3. Negative number
test_reverse_digits(-456, -654)  # Reversed -456 is -654

# 4. Leading zeros in the number (e.g., 1000 should become 1)
test_reverse_digits(1000, 1)  # Reversed 1000 is 1

# 5. Zero input (should remain zero)
test_reverse_digits(0, 0)  # Reversed 0 is 0

# 6. Number with zeros in the middle (e.g., 10203 should become 30201)
test_reverse_digits(10203, 30201)  # Reversed 10203 is 30201

# 7. Number with trailing zeros (e.g., 1200 should become 21)
test_reverse_digits(1200, 21)  # Reversed 1200 is 21

# 8. Large number with no zeros
test_reverse_digits(987654321, 123456789)  # Reversed 987654321 is 123456789

# 9. Large negative number
test_reverse_digits(-987654321, -123456789)  # Reversed -987654321 is -123456789

# 10. Single negative digit
test_reverse_digits(-9, -9)  # Reversed -9 is -9
