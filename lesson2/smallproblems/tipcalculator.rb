puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip_total = ( bill * (tip_percent / 100)).round(2)
bill_total = (tip_total + bill).round(2)

puts "The tip amount is $#{tip_total} and the total for the check is $#{bill_total}."