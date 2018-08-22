puts 'What is the bill?'
bill = gets.chomp.to_i

puts 'What is the tip percentage?'
tip_percentage = gets.chomp.to_i

tip = (tip_percentage.to_f / 100) *  bill

total_bill = tip + bill

puts "Your bill of $#{bill} with a #{tip_percentage}% tip comes to $#{total_bill}."
