def center_of(string)
center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

p center_of('I love Ruby')
p center_of('Launch School')
p center_of('Launch')
p center_of('Launcschool')
p center_of('x')
