def swap(a, b)
  t = a
  a = b
  b = t

  [a, b]
end

def swap2(a, b)
  [b, a]
end

def test_swap(a, b)
  result1 = swap(a, b)
  result2 = swap2(a, b)

  puts "swap(#{a.inspect}, #{b.inspect}) => #{result1.inspect}"
  puts "swap2(#{a.inspect}, #{b.inspect}) => #{result2.inspect}"
  puts result1 == result2 ? "✅ Match\n\n" : "❌ Mismatch\n\n"
end

# 1. Basic integers
test_swap(1, 2)
# Expected: [2, 1]

# 2. Strings
test_swap("apple", "banana")
# Expected: ["banana", "apple"]

# 3. Arrays
test_swap([1, 2], [3, 4])
# Expected: [[3, 4], [1, 2]]

# 4. Same values
test_swap(5, 5)
# Expected: [5, 5]

# 5. Nil and value
test_swap(nil, "value")
# Expected: ["value", nil]

# 6. Symbols
test_swap(:a, :b)
# Expected: [:b, :a]

# 7. Hashes
test_swap({x: 1}, {y: 2})
# Expected: [{y: 2}, {x: 1}]
