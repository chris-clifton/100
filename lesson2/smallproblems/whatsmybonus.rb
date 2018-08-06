def calculate_bonus(int, bool)
  if bool == true { int / 2 }
  end
end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
puts calculate_bonus(5000, true)