def even_or_odd(float_number)
  float_number_str = float_number.to_s

  i = float_number_str.length - 1
  dot_found = false
  while true
    next if float_number_str[i] == "0" && dot_found == false

    if float_number_str[i] == "."
      dot_found = true
      next
    end

    if float_number_str[i].to_i % 2 == 0
      puts("#{float_number} is even")
      return
    else
      puts("#{float_number} is odd")
      return
    end
  end
end

even_or_odd(1.123)
even_or_odd(1.33455)
even_or_odd(1.745565478)
even_or_odd(1.23200000000)
even_or_odd(1.123120423000000)
