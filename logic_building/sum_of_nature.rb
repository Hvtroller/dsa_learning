
def sum_of_nature(n)
  return puts "negative is not allow" if n < 0
  sum = 0

  n.times { |i| sum += i + 1 }

  puts "sum from 1 to #{n} is #{sum}"
end

def sum_of_nature_2(n)
  return puts "negative is not allow" if n < 0

  puts "sum2 for 1 to #{n} is #{(n * (n + 1)) / 2}"
end

# 1. n = 0 (edge case)
sum_of_nature(0)
sum_of_nature_2(0)
# Expected: sum from 1 to 0 is 0
#           sum for 1 to 0 is 0

# 2. n = 1 (minimum positive)
sum_of_nature(1)
sum_of_nature_2(1)
# Expected: sum from 1 to 1 is 0
#           sum for 1 to 1 is 1

# 3. n = 5
sum_of_nature(5)
sum_of_nature_2(5)
# Expected: sum from 1 to 5 is 10
#           sum for 1 to 5 is 15

# 4. n = 10
sum_of_nature(10)
sum_of_nature_2(10)
# Expected: sum from 1 to 10 is 45
#           sum for 1 to 10 is 55

# 5. n = 100
sum_of_nature(100)
sum_of_nature_2(100)
# Expected: sum from 1 to 100 is 4950
#           sum for 1 to 100 is 5050

# 6. n = -5 (negative number)
sum_of_nature(-5)
sum_of_nature_2(-5)
# Expected: May not behave as expected, depending on handling.