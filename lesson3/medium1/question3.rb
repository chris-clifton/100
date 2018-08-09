def factors(number)
  dividend = number
  divisors = []
  if number <= 0
    puts "Please use an integer bigger than 0."
  end
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

puts factors(1)
puts factors(-1)