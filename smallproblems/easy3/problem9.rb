def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam')
p palindrome?('racecar')
p palindrome?('tacocat')
p palindrome?('beastieboys')
p palindrome?('123321')
p palindrome?('Racecar')

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end


p real_palindrome?('madam') 
p real_palindrome?('Madam')           
p real_palindrome?("Madam, I'm Adam")  
p real_palindrome?('356653') 
p real_palindrome?('356a653') 
p real_palindrome?('123ab321') 