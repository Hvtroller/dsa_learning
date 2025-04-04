
def closest_number (n, m)
  upper = n
  under = n
  while true
    return upper if upper % m == 0
    return under if under % m == 0

    upper += 1
    under -= 1 if under > 1
  end
end

# Test case runner
def test_closest_number(n, m, expected)
  result = closest_number(n, m)
  status = result == expected ? "✅" : "❌"
  puts "closest_number(#{n}, #{m}) => #{result} | Expected: #{expected} #{status}"
end

puts "\n--- Test Cases (prefer upper number in ties) ---"

# 1. Already divisible
test_closest_number(10, 5, 10)

# 2. Not divisible, upper is closer
test_closest_number(7, 4, 8)

# 3. Not divisible, lower is closer
test_closest_number(7, 3, 6)

# 4. Edge: n = 1
test_closest_number(1, 2, 2)

# 5. Edge: n = 0
test_closest_number(0, 3, 0)

# 6. Large numbers
test_closest_number(1000, 333, 999)

# 7. Tie: 6 -> 4 and 8 are both 2 away, prefer upper = 8
test_closest_number(6, 4, 8)

# 8. Prime case
test_closest_number(17, 10, 20)

# 9. under goes below 1 and isn't divisible — must pick upper
test_closest_number(5, 7, 7)

# 10. m = 1
test_closest_number(42, 1, 42)