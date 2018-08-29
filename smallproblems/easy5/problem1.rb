def ascii_values(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end
