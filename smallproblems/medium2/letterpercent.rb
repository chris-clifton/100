def letter_percentages(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  percentages = { lowercase: [], uppercase: [], neither: [] }
  characters = string.chars
  length = string.length
  
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^a-zA-Z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:lowercase]= (counts[:lowercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end

p letter_percentages('abCdef 123') => {:lowercase=>50.0, :uppercase=>10.0, :neither=>40.0}
p letter_percentages('AbCd +Ef') => {:lowercase=>37.5, :uppercase=>37.5, :neither=>25.0}
p letter_percentages('123') => {:lowercase=>0.0, :uppercase=>0.0, :neither=>100.0}
