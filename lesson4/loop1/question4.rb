# Modify code so loop stops iterating when user inputs yes

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  # LS put a message here that said 'Incorrect answer. Please answer yes' because error messages are helpful
  # when dealing with input
end

