# an even number is a number divisible by 2
def even_or_odd n
  if n % 2 == 0
    puts "#{n} is even"
  else
    puts "#{n} is odd"
  end
end

# The last bit of the even number is 0 while odd number is 1
# When perform bitwise and operation with 1
# The even number always return 0 and odd number is always return 1
def even_or_odd_bitwise n
  if n & 1 == 0
    puts "#{n} is even bitwise"
  else
    puts "#{n} is odd bitwise"
  end
end

even_or_odd(1)
even_or_odd(2)
even_or_odd(3)
even_or_odd(123459)

even_or_odd_bitwise(1)
even_or_odd_bitwise(123134)
even_or_odd_bitwise(12312345)
even_or_odd_bitwise(9089784)
