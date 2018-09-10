# def fizzbuzz(x, y)
#   x.upto(y) do |num|
#     if (num % 5 == 0) && (num % 3 == 0)
#       num = 'FizzBuzz'
#     elsif num % 5 == 0
#       num = 'Buzz'
#     elsif num % 3 == 0
#       num = 'Fizz'
#     else
#       num
#     end
#   p num
#   end
# end

# fizzbuzz(1, 15)

# LS solution breaks this down into two methods- one converts numbers to fizz/buzz/fizzbuzz and the other prints
# Pretty standard - make this a habit

def fizzbuzz2(x, y)
  result = []
  x.upto(y) do |num|
    result << fizzbuzz_value(num)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

fizzbuzz2(1, 15)