def remove_vowels(array)
  array.each do |string|
    string.gsub!(/[aeiou]/i, '')
  end
  array
end

p remove_vowels(%w(ABC AEIOU XYZ))

# Had a little trouble writing the regex the first time around.  Forgot the square brackets and it messed everything up.
# Without square bracket, the 'aieou' matches literally against 'aeiou' and deleted the entire string at array[1]
# but left the 'A' in array[0].  