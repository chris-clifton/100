def prompt(msg)
  puts "=> #{msg}"
end

prompt 'Please enter an integer greater than 0:'
first_num = gets.chomp.to_i

prompt 'Please enter a second integer greater than 0:'
second_num = gets.chomp.to_i

def sum(x, y)
  total = 0
  x.upto(y) {|num| total += num }
  total
end

def product(x, y)
  total = 1
  x.upto(y) {|num| total *= num }
  total
end

loop do
  prompt "Enter 's' to compute the sum, or 'p' to compute the product."
  operator = gets.chomp
  if operator == 's'
    prompt "The sum of integers between #{first_num} and #{second_num} is #{sum(first_num, second_num)}."
    break
  elsif operator == 'p'
    prompt "The product of integers between #{first_num} and #{second_num} is #{product(first_num, second_num)}."
    break
  else
    prompt 'Sorry that is not a valid option.'
  end
end


