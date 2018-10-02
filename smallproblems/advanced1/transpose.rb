# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix.
# Do not modify original matrix- produce a new matrix

# input: nested array
# output: transposed nested array
# rules: don't modify original, don't use transpose method
# algorithm
  # take argument matrix and clone it



def transpose_array(arg)
  mtx = arg.clone
  mtx[0][1], mtx[1][0] = mtx[1][0], mtx[0][1]
  mtx[0][2], mtx[2][0] = mtx[2][0], mtx[0][2]
  mtx[2][1], mtx[1][2] = mtx[1][2], mtx[2][1]
  mtx 
end

matrix = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
new_matrix = [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p transpose_array(matrix) == new_matrix