def diamond_row(num)
  puts "*" * num
end

def diamond(num)
  1.upto(num) do |num| 
    if num.odd? 
      diamond_row(num) 
    end
  end
  num.downto(1) do |num| 
    if num.odd? 
      diamond_row(num)
    end
  end
end


diamond(3)
puts " "
diamond(9)

