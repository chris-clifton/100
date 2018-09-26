# Write a method that displays a 4 pointed diamond in a N x N grid where N is an odd integer supplied as argument to method

# input: odd integer
# output: 4 pointed diamond with N as width
# rules: print it?
# algorithm: 
# step 1: determine center row (N)
# step 2: come up with diamond row printing method- can take number as argument, number = a counter
# step 3: when counter == n, print middle row, then decrement counter and print rows back down to 1

# def diamond_row(number, grid_size)
#   stars = '*' * number
#   puts stars.center(grid_size)

# end

# def diamond(n)
#   center_row = '*' * n
#   1.upto(n) do |num|
#     diamond_row(num, n)
#   end
#   (n-1).downto(1) do |num|
#     diamond_row(num, n)
#   end
# end

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end



# diamond(1)
# diamond(3)
diamond(9)