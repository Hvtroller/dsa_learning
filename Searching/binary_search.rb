def binary_search array, target
  left = 0
  right = array.length - 1
  target = target.to_i

  while left <= right
    mid = (left + right) / 2

    if array[mid].to_i == target
      return mid
    elsif array[mid].to_i > target
      right = mid - 1
    else
      left = mid + 1
    end
  end

  return nil
end

def test_binary_search(array, target, expected)
  result = binary_search(array, target)
  puts "binary_search(#{array.inspect}, #{target}) => #{result}, Expected: #{expected}#{result == expected ? ' ✅' : ' ❌'}"
end

puts "--- Test Cases for binary_search ---"

# 1. Target exists in the middle
test_binary_search([10, 20, 30, 40, 50], 30, 2)

# 2. Target at the beginning
test_binary_search([5, 10, 15], 5, 0)

# 3. Target at the end
test_binary_search([1, 2, 3, 4], 4, 3)

# 4. Target not in array
test_binary_search([1, 3, 5, 7], 2, nil)

# 5. Empty array
test_binary_search([], 1, nil)

# 6. Single element array, target matches
test_binary_search([42], 42, 0)

# 7. Single element array, target doesn't match
test_binary_search([99], 100, nil)

# 8. Duplicates — return first occurrence
test_binary_search([7, 8, 7, 7], 7, 0)

# 9. Negative numbers
test_binary_search([-5, -10, -15], -10, 1)
