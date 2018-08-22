puts 'What is the width of the room?'
width = gets.chomp.to_i

puts 'What is the length of the room?'
length = gets.chomp.to_i

room_sq_feet = width * length
room_sq_meters = room_sq_feet * 10.7639

puts "The area of the room is #{room_sq_feet} square feet or #{room_sq_meters} square meters."