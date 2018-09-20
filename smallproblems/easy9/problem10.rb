# Write a method which takes a grocery list (array) of fruits with 
# quantities and converts it into an array of the correct number of each fruit.

# input: array
# output: array
# rules: x times output fruit
# algorith: iterate over each subarray, in each subarray, pull index 1, and x times output fruit

def buy_fruit(array)
  array.map { |fruit, value| [fruit] * value }.flatten
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
p buy_fruit([["grapes", 1], ["strawberries", 6], ["limes", 2]])
