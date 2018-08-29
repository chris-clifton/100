def prompt(msg)
  puts "=> #{msg}"
end

array = []

prompt "Enter the 1st number:"
first_number = gets.chomp.to_i
array << first_number

prompt "Enter the 2nd number:"
second_number = gets.chomp.to_i
array << second_number

prompt "Enter the 3rd number:"
third_number = gets.chomp.to_i
array << third_number

prompt "Enter the 4th number:"
fourth_number = gets.chomp.to_i
array << fourth_number

prompt "Enter the fifth number:"
fifth_number = gets.chomp.to_i
array << fifth_number

prompt "Enter the last number:"
last_number = gets.chomp.to_i

if array.include?(last_number)
     puts "The number #{last_number} does appear in #{array}."
else 
  puts "The number #{last_number} does not appear in #{array}."
end




