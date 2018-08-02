# Method to clean up code and style terminal output
def prompt(message)
  puts("=> #{message}")
end

# Method to define valid number in user input
def valid_number?(num)
  num.to_i != 0
end

# Validating number input and making room for 0 and for floats
def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

# Validating integers and allowing floats
def number?(num)
  integer?(num) || float?(num)
end

# Method to change selected operator to text for a confirmation prompt
def operation_to_message(param)
  case param
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

# Initialize variables outside loops
number1 = ''
number2 = ''
name = ''
operator = ''
again = ''
operator_prompt = <<-MSG
What operation would you like to perform?
(1) Add
(2) Subtract
(3) Multiply
(4) Divide
MSG

# Welcome to the Calculator message
prompt('Welcome to Calculator! Enter your name please: ')
loop do
  name = gets.chomp
  if name.empty?
    prompt('Make sure you enter your name!')
  else
    break
  end
end

prompt("Hi, #{name}!")

# Main loop - whole program is in here!
loop do
  # Get a valid first number from user
  loop do
    prompt("What's the first number?")
    number1 = gets.chomp
    # Break if number is valid, otherwise prompt user for another number
    if integer?(number1)
      break
    else
      prompt("Sorry, that doesn't look like a valid number.")
    end
  end

  # Get a valid second number from user
  loop do
    prompt("What's the second number?")
    number2 = gets.chomp
    # Break if number is valid, otherwise prompt user for another number
    if integer?(number2)
      break
    else
      prompt("Sorry, that doesn't look like a valid number.")
    end
  end

  # Ask the user for an operation to perform
  prompt(operator_prompt)
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('Please choose one of the options provided.')
    end
  end

  prompt("#{operation_to_message(operator)} #{number1} and #{number2}...")

  # Perform the operation
  result =  case operator
            when '1'
              number1.to_f + number2.to_f
            when '2'
              number1.to_f - number2.to_f
            when '3'
              number1.to_f * number2.to_f
            when '4'
              number1.to_f / number2.to_f
            end

  # Output the result
  prompt("The result is #{result}!")

  # Do you want to perform another calculation?
  prompt('Do you want to perform another calculation? (Y to calculate again)')
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end

prompt("Thank you for using the calculator! See you next time, #{name}!")
