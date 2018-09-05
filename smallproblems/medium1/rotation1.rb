def rotate_array(array)
  array[1..-1] + [array[0]]
end

x = [1, 2, 3, 4, 5]
y = [2, 3, 4, 5, 1]

p rotate_array(x)
p rotate_array(y)

def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_string('chris')
p rotate_string('katie')

def rotate_integers(integer)
  rotate_array(integer.to_s.chars).join.to_i
end

p rotate_integers(1234)
p rotate_integers(2018)
