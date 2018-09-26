# Write a method that returns the last digit of nth fibonacci number

def fibonacci_last(num)
  first, last = [1, 1]
  3.upto(num) do 
    first, last = [last, first + last]
  end
  last.digits.shift
end

p fibonacci_last(15)
p fibonacci_last(20)
p fibonacci_last(100)