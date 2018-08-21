def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

# The key to this solution is having the sections array containing integers representing the number 
# of characters in each section. During each iteration through the array, within the block we can call the times method on the 
# integer for that iteration and thus build up the UUID character by character.

# This is just one possible solution to the problem, and yours may be different. However you solved 
# it though, you will most likely have needed to use one or more iterative methods.