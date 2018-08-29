def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end


xor?(5.even?, 4.even?) 
xor?(5.odd?, 4.odd?) 
xor?(5.odd?, 4.even?) 
xor?(5.even?, 4.odd?) 
