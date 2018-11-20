# Write a method that implements a miniature stack-and-register-based programming language that has following commands:
  # n : Place a value in register, don't modify stack
  # PUSH : Push the register value on to the stack. Leave value in register
  # ADD : Pops value from stack, adds to register value, storing result in register
  # SUB : Pops value from stack, subtracts from register value, storing result in register
  # MULT : Pops value from stack, multiplies by register value, storing result in register
  # DIV : Pops value from stack, divides into register value, storing result in register
  # MOD : Pops value from stack and divides into register value, storing remainder result in register
  # POP : Removes top most item from stack and places in register
  # PRINT : Print register value

# Input: String
# Output: Integer

# Rules
  # All operations are integer operations (only matters for DIV and MOD)
  # Programs will play nice - won't try to pop non-existent value from stack, won't contain unknown values
  # Register can be thought of as the current value.
  # All operations POP topmost/last item from stack, perform operation using popped value and register value, then store result in register
  # All operations are destructive to the register
  # Register will be initialized to zero.

# Algorithm
  # Step 1: Initialize a stack and initialize a register.  Stack will be an array, Register will be a local variable.
  # Step 2: Initialize commands and operations.  Can use case statement or if/else statement
    # Step 2.5: split string into array, iterate over each
    # Step 2.75: perform operation of each element in array
  # Step 3: Ask user for input
  # Step 4: Output result of operation


def minilang(command)
  register = 0
  stack = []
  
  command.split.each do |operation|
    case operation
    when /['0-9']/  then register = operation.to_i
    when 'PUSH'     then stack << register
    when 'ADD'      then register += stack.pop
    when 'SUB'      then register -= stack.pop
    when 'MULT'     then register *= stack.pop
    when 'DIV'      then register /= stack.pop
    when 'MOD'      then register %= stack.pop
    when 'POP'      then register = stack.pop
    when 'PEEK'     then puts stack.last
    when 'PRINT'    then puts register 
    end
  end
  # puts "Register value = #{register}."
  # puts "Stack Array = #{stack}."
end

# test cases

minilang('5 print')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('8 PUSH')
