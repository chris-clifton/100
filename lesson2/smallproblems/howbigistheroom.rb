puts "In meters, what is the length of the room?"
answer_length = gets.chomp.to_i

puts "In meters, what is the width of the room?"
answer_width = gets.chomp.to_i

area_square_meters = answer_length * answer_width
area_square_feet = area_square_meters * 10.7639

puts "The area of the room is #{area_square_meters} square meters (#{area_square_feet} square feet."