# Write a method that computes the nth Fibonacci number where n is the argument to the method

def fibonacci(num)
  return 1 if num <= 2
  fibonacci(num - 1) + fibonacci(num - 2)
end

p fibonacci(1)
p fibonacci(5)
p fibonacci(12)