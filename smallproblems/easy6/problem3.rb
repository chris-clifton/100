# write a method that calculates and returns the index of the first Fibonacci number that has the number of digits
# specified as an argument

# input: integer
# output: integer
# rules: calculate index of first fib number that has the ar


def fibonacci(num)
  loop do
    first = 1
    second = 1
    fibonacci = first + second
    first = second
    second = fibonacci
    break if fibonacci >= num
  end
  fibonacci
end

def find_fibonacci_index_by_length(num)
  # do more fibonaccing
end

# find_fibonacci_index_by_length(2)
# find_fibonacci_index_by_length(10)
# find_fibonacci_index_by_length(100)
# find_fibonacci_index_by_length(1000)
# find_fibonacci_index_by_length(10000)

p fibonacci(2)
puts 'what'