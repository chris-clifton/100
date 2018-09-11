def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven')
p word_cap('the javaScript language')
p word_cap('this is a "quoted" word')