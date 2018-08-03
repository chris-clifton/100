# Car Loan Calculator
require "pry"

def prompt(message)
  puts("=> #{message}")
end

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

# Variables
loan_amount = ''
loan_months = ''
interest_rate = ''

prompt('Welcome to the Car Payment Calculator!')
prompt('We need some information to provide a monthly car payment plan.')
prompt('But first, what is your name?')
name = gets.chomp
loop do
  if name.empty?
    prompt('Make sure you enter your name!')
  else
    break
  end
end

prompt("Alright, #{name}, lets's get started")

# Main Program Loop
loop do
  # Loop for loan amount
  prompt('What is the loan amount?')
  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if number?(loan_amount)
      break
    else
      prompt("Well that can't be right.  What is the loan amount?")
    end
  end

  # Loop for loan duration in months
  prompt('How many months is the loan for?')
  loan_months = ''
  loop do
    loan_months = gets.chomp
    if number?(loan_months)
      break
    else
      prompt('Sorry, please the loan duration in months:')
    end
  end

  # Loop for APR
  prompt('What was the Annual Percentage Rate (APR) of your loan?')
  interest_rate = ''
  loop do
    interest_rate = gets.chomp
    if number?(interest_rate)
      break
    else
      prompt('Sorry, could you please provide a valid APR?')
    end
  end

  # Getting out of the loop
  prompt <<-MSG
                Your car loan payment is for $#{loan_amount}.
                Your loan is for #{loan_months} months.
                Your APR is at #{interest_rate}.
                If this is correct, please press 'y'.  Press 'n' to re-enter any information'
            MSG
  continue = gets.chomp
  break if continue.downcase.start_with?('y')
end

def apr_months(num)
  num / 12
end

annual_interest_rate = interest_rate.to_f / 100
monthly_interest_rate = annual_interest_rate / 12

car_payment = loan_amount.to_f *
              (monthly_interest_rate /
              (1 - (1 + monthly_interest_rate)**(-loan_months.to_i)))

puts car_payment
