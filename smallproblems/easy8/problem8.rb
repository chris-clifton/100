def double_consonants(string)
  new_string = ''
  string.each_char do |character|
    # match consonant letters only without worrying about case
    if character.match(/[a-z[^aeiou]]/i)
      new_string << character + character
    else
      new_string << character
    end
  end
  new_string
end

p double_consonants('String')
p double_consonants("HEllo-World!")
p double_consonants("July 4th")
p double_consonants('')

# Well, you're a fuckin idiot and you doubled all the vowels on the first try
# Rewriting the regex still looks cleaner than writing a giant consonants constant as a string array of 21 letters
# though it may be more difficult to actually read and maintain without good comments