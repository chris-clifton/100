def prompt(message)
  puts("=> #{message}")
end

def display_result(playaplaya, computer)
  if  (playaplaya == 'rock' && computer == 'scissors') ||
      (playaplaya == 'paper' && computer == 'rock') ||
      (playaplaya == 'scissors' && computer == 'paper')
      prompt('You won!')
  elsif
      (playaplaya == 'rock' && computer == 'paper') ||
      (playaplaya == 'paper' && computer == 'scissors') ||
      (playaplaya == 'scissors' && computer == 'rock')
      prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

  VALID_CHOICES = ['rock', 'paper', 'scissors']
choice = ''

# Main program loop
loop do
  # User choice and validation
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice!")
    end
  end

  # Computer choice
  computer_choice = VALID_CHOICES .sample
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}") 

  display_result(choice, computer_choice)

  # Play again loop
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing!')
