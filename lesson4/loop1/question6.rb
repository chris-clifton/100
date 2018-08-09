# Using while loop print 5 random numbers between 0 and 99

numbers = 0

while numbers < 5
  puts rand(0..99)
  numbers += 1
end