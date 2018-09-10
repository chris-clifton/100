def substrings_at_start(string)
  stringarray = []
  0.upto(string.size - 1) do |index|
    stringarray << string[0..index]
  end
  stringarray
end

def substrings(string)
  new_string = []
  (0..string.size).each do |start_index|
    this_substring = string[start_index..-1]
    new_string.concat(substrings_at_start(this_substring))
  end
  new_string
end

def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrom?(substring)
  end
  results
end

def palindrom?(string)
  string == string.reverse && string.size > 1
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')