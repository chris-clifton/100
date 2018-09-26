# Write a method that finds all squares less than or equal to the input number.

# input: integer
# output: array
# rules: find all squares
# algorithm: 1.upto(n) 

def short_lights(n)
  lights = (1..n).to_a.map! { |x| x**2 }.select { |y| y <= n }
  lights
end

p short_lights(5)
p short_lights(10)
p short_lights(1000)