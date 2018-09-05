def short_long_short(str1, str2)
  long = nil
  short = nil
  if str1.size > str2.size
    long = str1
    short = str2
  else
    long = str2
    short = str1
  end
  p short + long + short
end

short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh')
short_long_short('', 'xyz')