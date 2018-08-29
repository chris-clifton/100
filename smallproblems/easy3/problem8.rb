def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam')
p palindrome?('racecar')
p palindrome?('tacocat')
p palindrome?('beastieboys')
p palindrome?('123321')
p palindrome?('Racecar')

