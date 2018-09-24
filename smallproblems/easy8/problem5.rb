# input: string
# output: array of strings
# rules: returns array of substrings in a string that are palindromic.


def substrings_at_start(string)
  result = []
  counter = 0 
  loop do
    result << string[0..counter]
    counter += 1
    break if counter >= string.size
  end
  result
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
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

p palindromes('abcd')
p palindromes('madam')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')