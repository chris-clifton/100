def between?(a, b, c)
  if (a > b) && (a < c)
    puts "The number is #{a} and it is between #{b} and #{c}."
  elsif
    (a == b) || (a == c)
    puts "#{a} is either #{b} or #{c} and not between them."
  else
    puts "#{a} is not between #{b} and #{c}."
  end
end

puts between?(42, 10, 100)

# I didn't know the .cover? method and wrote 12 lines of code instead of writing 12 characters of code.
# Better solution 

(10..100).cover?(42)

