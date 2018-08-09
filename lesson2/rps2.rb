require "pry"

def prompt(message)
  puts("=> #{message}")
end

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

user_choice = ''

VALID_CHOICES = %w(rock paper scissors spock lizard)
ALL_CHOICES = {rock: 'r', paper: 'p', scissors: 's', spock: 'k', lizard: 'l'}

loop do
=begin
TRYING TO VALIDATE WITH HASH AND DON'T WANT TO ERASE THIS CODE YET
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    user_choice = gets.chomp
    if VALID_CHOICES.include?(user_choice)
      break
    else
      prompt("That's not a valid choice!")
    end
  end
=end

    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      user_choice = gets.chomp
      if ALL_CHOICES.has_value?(user_choice)
        break
      else
        prompt("That's not a valid choice!")
      end
    end

  computer_choice = VALID_CHOICES.sample
  prompt("You chose: #{user_choice}; Computer chose: #{computer_choice}.")

  display_result(user_choice, computer_choice)

  prompt('Do you want to play again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing!')