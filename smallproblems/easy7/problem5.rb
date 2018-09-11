def staggered_case(string)
  characters = string.chars.each_with_index do |char, idx|
    if idx.even?
      char.upcase!
    elsif idx.odd?
      char.downcase!
    else
      char
    end
  end
  characters.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')