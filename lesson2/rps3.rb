require "pry"

# Initializing constants
VALID_CHOICE = %w(rock paper scissors lizard spock)
ABBR_VALID_CHOICE = %w(r p s l k)
ALL_CHOICES = [[VALID_CHOICE], [ABBR_VALID_CHOICE]]

def choice_validation(input)
   ALL_CHOICES.include?(input)
end

def prompt(message)
  puts("=> #{message}")
end

user_choice = ''

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'rock' && second == 'lizard') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'paper' && second == 'spock') ||
  (first == 'scissors' && second == 'paper') ||
  (first == 'scissors' && second == 'lizard') ||
  (first == 'spock' && second == 'rock') ||
  (first == 'spock' && second == 'scissors') ||
  (first == 'lizard' && second == 'spock')||
  (first == 'lizard' && second == 'paper')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt('Yon won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

user_choice_prompt = <<-MSG
Please select one of the following:
  (R) Rock
  (P) Paper
  (S) Scissors
  (L) Lizard
  (K) Spock
MSG

##################################

# Main program loop 
loop do
  
  # GET / SET user_choice
  loop do
    prompt("#{user_choice_prompt}")
    user_choice = gets.chomp
    # validate user_choice: must be a full VALID_CHOICE or an ABBR_VALID_CHOICE
    if user_choice == VALID_CHOICE.any?
      break
    else
      prompt("Please choose a valid option.")
    end
  end
  
  prompt("#{user_choice} should be your choice")
  # computer_choice randomly selected from VALID_CHOICE
  computer_choice = VALID_CHOICE.sample

  # display user_choice and computer_choice
  prompt("You have selected #{user_choice} and the Computer has selected #{computer_choice}!")

  # determine the winner
  def display_result(player, computer)
    if win?(player, computer)
      prompt('Yon won!')
    elsif win?(computer, player)
      prompt('Computer won!')
    else
      prompt("It's a tie!")
    end
  end
  
  # increment win count


  #loop do
    prompt("Do you want to play again? 'y' for Yes, 'n' for No.")
    answer = gets.chomp
    break unless answer.start_with?('y')
  #end
end