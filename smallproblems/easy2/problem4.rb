puts 'What is your age?'
current_age = gets.chomp.to_i

puts 'At what age would you like to retire?'
target_age = gets.chomp.to_i

work_years_left = target_age - current_age

puts 'What is the current year?'
current_year = gets.chomp.to_i

target_year = work_years_left + current_year

puts "It's #{current_year}, which means you must work for #{work_years_left} more years in order to retire by #{target_year}."