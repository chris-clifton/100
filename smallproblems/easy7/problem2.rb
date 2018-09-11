def letter_case_count(string)
  counts = {}
  characters = string.chars 
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^a-zA-Z]/ } 
  counts 
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')