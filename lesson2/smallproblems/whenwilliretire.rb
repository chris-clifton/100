puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

puts "What is the current year?"
current_year = gets.chomp.to_i

years_left = retire_age - age

retire_year = current_year + (years_left)

puts "It's #{current_year} and you will retire in #{retire_year}."
puts "You only have #{years_left} years left of work to go!"