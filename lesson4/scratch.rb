=begin
# Iterating over a string
string = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter >= string.size
  puts string[counter]
  counter += 1
end  

# Iterating over an array
array = ['green', 'blue', 'purple', 'orange']
counter2 = 0

loop do
  break if counter2 >= array.size
  puts "I'm the color #{array[counter2]}!"
  counter2 += 1
end

# Iterating over an array of differnt objects and returning the name of the object class
object = ['hello', :key, 10, []]
counter3 = 0

loop do
  break if counter3 >= object.size
  puts object[counter3].class
  counter3 += 1
end

# Iterating over hashes
# The important thing to realize here is that this is a two step process. First, we're iterating 
# over the array of keys, pets, and saving each key into the current_pet variable. We then use 
# the current_pet key to retrieve the appropriate value out of the number_of_pets hash.

number_of_pets = {dogs: 2, cats: 4, fish: 1}

pets = number_of_pets.keys
counter4 = 0 

loop do
  break if counter4 >= number_of_pets.size
  current_pet = pets[counter4]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}!"
  counter4 += 1
end


alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0
selected_character = ''

loop do
  current_character = alphabet[counter]

  if current_character == 'c'
    selected_character << current_character
  end

  counter += 1
  break if counter == alphabet.size
end
 p selected_character



fruits = ['apple', 'banana', 'pear', 'strawberry', 'cherry']
new_fruits = []
counter = 0 

loop do
  current_element = fruits[counter]
  new_fruits << current_element + 's'
  counter +=1
  break if counter == fruits.size
end

puts new_fruits



produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end
      counter += 1
  end

  puts selected_fruits
 end

 select_fruit(produce)



def multiply(array, num)
  multiplied_array = []
  counter = 0

  loop do
    break if counter == array.size

    multiplied_array << array[counter] * num

    counter += 1
  end
  p multiplied_array
end

my_array = [1, 2, 3, 4, 5]
multiply(my_array, 2)

my_other_array = [2, 4, 6, 8, 10]
multiply(my_other_array, 10)

=end

def select_letter(sentence, character)
  selected_characters = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_character = sentence[counter]

    if current_character == character
      selected_characters << current_character
    end

    counter += 1
  end
  selected_characters
end

p select_letter('christopher clifton', 'c')
p select_letter('christopher clifton', 'k')
p select_letter('katie kik', 'c')
p select_letter('katie kik', 'k')

