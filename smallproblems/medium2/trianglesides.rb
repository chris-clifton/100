# Write a method that takes the lengths of 3 sides of a triangle as arguments and returns a symbol
# :equilateral, :isosceles, :scalene, or :invalid, depending on whether the triangle is one of those 4.

# Equilateral: all three sides equal length
# Isosceles: two sides are equal, one is different
# Scalene: all thre sides different length

# Rules: sum of lengths of two shortest sides must be greater than length of longest side, and all sides must
# have a length greater than zero- otherwise invalid.

# Input: 3 integers
# Output: a symbol calling the triangle by type
# Rules: sum of two short sides, all sides length > 0
# Algorithm:
# step 1: define symbols/triangles, start method definition, write test cases
# step 2: rule out input as invalid if sum of short sides < long side && all sides length > 0
# step 3: if all three sides are equal then :equilateral
# step 4: if two sides are equal, and one is different then :isosceles
# step 5: if all sides are different, then :scalene
# step 6: catch-all clause to return :invalid to account for weird input

# :equilateral = 'Equilateral'
# :isosceles = 'Isosceles'
# :scalene = 'Scalene'
# :invalid = 'Invalid'

################################################################################

def triangle(a, b, c)
  #sort arguments by length
  triangle_array = [a, b, c].sort

  #initialize variables to sorted sides
  x = triangle_array[0]
  y = triangle_array[1]
  z = triangle_array[2]
    
  # rule out invalid triangles
  if x + y <= z || (x*y*z) == 0
    return :invalid
  end

  if x == y && x == z
    :equilateral
  elsif x == y || x == z || y == z
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3)
p triangle(3, 3, 1.5)
p triangle(3, 4, 5)
p triangle(0, 3, 3)
p triangle(3, 1, 1)
