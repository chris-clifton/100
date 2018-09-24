# Write a method that takes 3 angles of triangle as arguments and returns one of following symbols
# :right, :acute, :obtuse, :invalid
# Assume integers and are specified in degrees

# Input: 3 integers as degrees
# Output: symbols based on type of triangle
# Rules: sum of angles must be 180, all angles must be > 0, else :invalid
# :right - one angle = 90
# :acute - all angles < 90
# :obtuse - one angle > 90
# Algorithm: 
  # step 1:
  # step 2: eliminate invalid triangles (sum == 180 and each > 0)
  # step 3: right
  # step 4: acute
  # step 5: obtuse


def triangle(a, b, c)
  angles = [a, b, c]
  if (a + b + c) != 180 || angles.include?(0)
    :invalid
  elsif angles.all? { |angle| angle < 90 }
    :acute
  elsif angles.any? { |angle| angle > 90 }
    :obtuse
  else
    :right
  end
end

p triangle(60, 70, 50) #=> :acute
p triangle(30, 90, 60) #=> :right
p triangle(120, 50, 10) #=> :obtuse
p triangle(0, 90, 90) #=> :invalid
p triangle(50, 50, 50) #=> :invalid