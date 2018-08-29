# Create a method that takes 2 arguments, an array and a hash. 
# The array will contain 2 or more elements that, when combined 
# with adjoining spaces, will produce a person's name. The hash 
# will contain two keys, :title and :occupation, and the appropriate 
# values. Your method should return a greeting that uses the person's 
# full name, and mentions the person's title.

def greeting_method(array, hash)
  puts "Hello #{array.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

greeting_method(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
