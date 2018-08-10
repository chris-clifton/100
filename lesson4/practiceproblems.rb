# Problem 1
# What is the return value of Enumerable#select method below?

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

# Problem 2
# Add up all the ages of the Munster family

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
age_sum = 0

ages.each { |name, value| age_sum += value }

puts age_sum

# Problem 3
# Git rid of the old people (+100 years old)

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
young_munsters = {}

ages.keep_if { |name, age| age < 100 }

p ages 

# Problem 4
# Pick out the youngest age from Munster family has

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min
p ages.values.max 

# Problem 5
# Find index of first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name|
  if name.start_with?("Be")
    puts name
  end
end

# Problem 6
# Amend this array so the names are all shortened to first three characters

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0, 3] }

# Problem 7
# Create a hash that expresses the frequency which each letter occurs in this string
# I did not come close to this one and really need to figure this one out

statement = 'The Flintstones Rock'

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# Problem 9
# "Titleize" the string

words = 'the flintstones rock'

words.split.map { |word| word.capitalize }.join(' ')

# Problem 10
# Given the munsters hash, modify so each family member has additional "age_group" key that has one of three values
# Three values are kid, adult, senior
# kid 0-17, adult 18-64, senior 65+

# Also struggled with this problem.  

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

p munsters