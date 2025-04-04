def opposite n
  n = n.to_i
  return puts "Invalid input" if n > 6 || n < 1

  puts 7 - n
end
# Test runner
def test_opposite(n, expected_output)
  print "opposite(#{n.inspect}) => "
  opposite(n)  # Will print actual output
  puts "Expected: #{expected_output}\n\n"
end

puts "\n--- Test Cases for Updated opposite(n) ---"

# 1. Valid integers
test_opposite(1, 6)
test_opposite(2, 5)
test_opposite(3, 4)
test_opposite(4, 3)
test_opposite(5, 2)
test_opposite(6, 1)

# 2. Integers out of range
test_opposite(0, "Invalid input")
test_opposite(7, "Invalid input")
test_opposite(-1, "Invalid input")
test_opposite(100, "Invalid input")

# 3. String inputs
test_opposite("1", 6)
test_opposite("6", 1)

