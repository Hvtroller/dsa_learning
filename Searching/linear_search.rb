def linear_search array, target
  array.each.with_index do |e, index|
    return index if e == target
  end

  return nil
end

def test_linear_search(array, target, expected)
  result = linear_search(array, target)
  puts "linear_search(#{array.inspect}, #{target}) => #{result}, Expected: #{expected}#{result == expected ? ' ✅' : ' ❌'}"
end

puts "--- Test Cases for linear_search ---"

# 1. Target exists in the middle
test_linear_search([10, 20, 30, 40, 50], 30, 2)

# 2. Target at the beginning
test_linear_search([5, 10, 15], 5, 0)

# 3. Target at the end
test_linear_search([1, 2, 3, 4], 4, 3)

# 4. Target not in array
test_linear_search([1, 3, 5, 7], 2, nil)

# 5. Empty array
test_linear_search([], 1, nil)

# 6. Single element array, target matches
test_linear_search([42], 42, 0)

# 7. Single element array, target doesn't match
test_linear_search([99], 100, nil)

# 8. Duplicates — return first occurrence
test_linear_search([7, 8, 7, 7], 7, 0)

# 9. Negative numbers
test_linear_search([-5, -10, -15], -10, 1)

# 10. Mixed types (string target)
test_linear_search(['a', 'b', 'c'], 'c', 2)

# 11. Mixed types (number and string)
test_linear_search(['1', 2, '3'], 2, 1)
test_linear_search(['1', 2, '3'], '2', nil)
