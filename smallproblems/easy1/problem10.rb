def bonus_calc(int, bool)
  if bool == true
    int / 2
  else
    int - int
  end
end

puts bonus_calc(2800, true) == 1400
puts bonus_calc(1000, true) == 0
puts bonus_calc(50000, true) == 25000