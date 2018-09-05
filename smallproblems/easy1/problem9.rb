def sum(param)
  param.digits.reduce(:+)
end


p sum(23)
p sum(496)
p sum(123_456_789)
