puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum of all integers between 1 and #{integer}."
puts ">> Enter 'p' to computer the product of all integers between 1 and #{integer}."
answer = gets.chomp

if
  answer == 's'
    answer.to_i.