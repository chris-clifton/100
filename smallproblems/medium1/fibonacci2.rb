# Write p fibonacci method so that it computes result without recursion

def fibonacci(num)
  first, last = [1, 1]
  3.upto(num) do
    first, last = [last, first + last]
  end
  last
end

p fibonacci(40)
p fibonacci(50)
p fibonacci(1000)