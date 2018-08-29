# 21

SUITS = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
# rubocop: disable Metrics/LineLength
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
# rubocop: enable Metrics/LineLength

def prompt(msg)
  puts "=>#{msg}"
end

def invalid_choice
  prompt 'Sorry, that is not a valid choice.'
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def cards_total(player_hand)
  values = player_hand.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'Ace'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == 'Ace' }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def bust?(player_hand)
  cards_total(player_hand) > 21
end

def detect_result(dealer_cards, player_cards)
  player_total = cards_total(player_cards)
  dealer_total = cards_total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total > player_total
    :dealer
  elsif player_total > dealer_total
    :player
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer bsuted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "----------------"
  prompt "Would you like to play again?"
  answer = gets.chomp.downcase
  answer.downcase.start_with?('y')
end

# Main Game Loop
loop do
  prompt "Welcome to 21!"

  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # initial deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  # Display player cards and one dealer card
  prompt "Your cards are #{player_cards[0]} and #{player_cards[1]}."
  prompt "Your total is #{cards_total(player_cards)}."
  puts ' '
  prompt "Dealer cards are #{dealer_cards[0]} and HIDDEN."

  # Player turn loop
  loop do
    player_turn = nil
    loop do
      prompt 'Would you like to hit or stay?'
      player_turn = gets.chomp.downcase
      break if player_turn == 'hit' || player_turn == 'stay'
      invalid_choice
    end

    if player_turn == 'hit'
      player_cards << deck.pop
      prompt "You chose to hit!"
      prompt "You drew a #{player_cards.last}."
      prompt "Your cards are now #{player_cards}."
      prompt "Your total is now #{cards_total(player_cards)}."
    end

    break if player_turn == 'stay' || bust?(player_cards)
  end

  if bust?(player_cards)
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "You stayed at #{cards_total(player_cards)}."
  end

  # Dealer's turn loop do
  prompt "Dealer's turn."

  loop do
    break if cards_total(dealer_cards) >= 17

    dealer_cards << deck.pop
    prompt "Dealer hits!"
    prompt "Dealer's cards are now: #{dealer_cards}."
    prompt "Dealer is showing a total of #{cards_total(dealer_cards)}."
  end

  if bust?(dealer_cards)
    prompt "Dealer total is now: #{cards_total(dealer_cards)}."
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{cards_total(dealer_cards)}."
  end

  # Calculate Winner
  puts "============================"
  prompt "Dealer cards: #{dealer_cards}. Total: #{cards_total(dealer_cards)}."
  prompt "Player cards: #{player_cards}. Total: #{cards_total(player_cards)}."
  puts "============================"

  display_result(dealer_cards, player_cards)

  break unless play_again?
end

prompt "Thank you for playing 21!"
