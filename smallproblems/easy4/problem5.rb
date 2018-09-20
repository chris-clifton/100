def multisum(number)
  multiples = 0
  1.upto(number) do |int|
    if int % 3 == 0
      multiples += int
    elsif int % 5 == 0 
      multiples += int
    else
      int    
    end
  end
  multiples
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)