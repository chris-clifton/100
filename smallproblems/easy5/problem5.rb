def cleanup(string)
  string.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?")