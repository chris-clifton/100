# Write a method that determines the mean (average) of the
# three scores passed to it, and returns the letter value 
# associated with that grade.

def get_grades(a, b, c)
  average = (a + b + c) / 3
  
  case average
  when 90..100 then  'A'
  when 80..89  then  'B'
  when 70..79  then  'C'
  when 60..69  then  'D'
  else               'F'
  end
end

p get_grades(90, 85, 61)
p get_grades(100,100,100)
p get_grades(40,45, 50)