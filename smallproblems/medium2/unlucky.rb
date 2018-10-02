# Write a method that returns the number of Friday the 13th's in the year given by an argument. 

# Input: integer
# Output: integer
# Rules: 
  # assume year is greater than 1752 (year Gregorian Calendar adopted)


  require 'date'

  def friday_13th(year)
    unlucky_count = 0
    thirteenth = Date.new(year, 1, 13)
    12.times do
      unlucky_count += 1 if thirteenth.friday?
      thirteenth = thirteenth.next_month
    end
    unlucky_count
  end

  p friday_13th(2015)
  p friday_13th(1986)
  p friday_13th(2019)