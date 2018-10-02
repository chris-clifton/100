# Write a method that takes a string as an argument and returns true if all parentheses in the string are properly balanced
# False otherwise

# input: string
# output: boolean
# rules: parentheses must be balanced and correctly ordered
# algorithm: 
# step 1: break string down into an array using chars
# step 2: initialize counter
# step 3: iterate over string characters individually, -1 if ( is found and +1 if ) is found
# step 4: if counter == 0 then true

def balanced?(string)
  parentheses_counter = 0
  string.chars.each do |character|
    return false if parentheses_counter > 0
    if character == '(' then parentheses_counter -= 1
    elsif character == ')' then parentheses_counter += 1
    else character
    end
  end
  parentheses_counter.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false