numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# What would you expect this code to output?
# I'd expect 1, 2, and 3.  The .uniq method deletes any dupilicate values in an array.

# Aaaaand incorrect.  The output was 1, 2, 2, 3 because we didn't modify the numbers object.
# Had the code read numbers.uniq! then line 4 would have produced the code I expected.