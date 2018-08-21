p [['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort

# Should return
[['a', 'b', 'c', 'cat'], [2, 'b'], [3, 'a', 'car', 'd'], ['a', 'car', 'd']]

# This is not correct.  Correct output is: 
[["a", "car", "d"], ["a", "car", "d", 3], ["a", "cat", "b", "c"], ["b", 2]]

# Reason is that the nested arrays are sorted in the parent array- not the objects of the array within each array.

