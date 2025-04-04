def term_of_ap(a, b, n)
  gap = b - a
  (n - 1).times { a += gap }

  puts a
end
# Test runner
def test_term_of_ap(a1, a2, n, expected_output)
  print "term_of_ap(#{a1}, #{a2}, #{n}) => "
  term_of_ap(a1, a2, n)  # Will print actual output
  puts "Expected: #{expected_output}\n\n"
end

puts "\n--- Corrected Test Cases for term_of_ap ---"

# 1. Standard case with positive numbers
test_term_of_ap(2, 5, 4, "The 4th term of the series is 11")

# 2. Common difference is negative (n = 4 should return -4)
test_term_of_ap(5, 2, 4, "The 4th term of the series is -4")

# 3. Edge case: a1 = a2 (common difference = 0)
test_term_of_ap(3, 3, 5, "The 5th term of the series is 3")

# 4. Negative terms with increasing series
test_term_of_ap(-5, -2, 4, "The 4th term of the series is 4")

# 5. Negative terms with decreasing series
test_term_of_ap(-2, -5, 4, "The 4th term of the series is -11")

# 6. n = 1 (first term)
test_term_of_ap(1, 7, 1, "The 1st term of the series is 1")

# 7. n = 0 (no valid nth term, but handle gracefully)
test_term_of_ap(2, 4, 0, "The 0th term of the series is 2")

# 8. n = 10 with a large gap between terms
test_term_of_ap(1, 1000, 10, "The 10th term of the series is 8992")

# 9. Reverse order: a1 > a2
test_term_of_ap(10, 3, 3, "The 3rd term of the series is -4")

# 10. Case with negative and positive terms
test_term_of_ap(-3, 2, 4, "The 4th term of the series is 12")
