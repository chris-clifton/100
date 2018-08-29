def letter_case_counter(string)
  counts = {}
  characters = string.characterscounts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }