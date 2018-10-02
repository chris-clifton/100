# Write a method that returns 'true' if the word passed in as an argument can be spelled from this set of blocks, false otherwise

# input: string
# output: boolean
# rules: must spell string given as argument from following blocks, can only use a block once

# B:0 ; X:K ; D:Q ; N:A ; G:T ; R:E ; F:S ; J:W ; H:U ; V:I ; L:Y ; Z:M

# algorithm:
# step 0.5: initialize blocks
# step 1: break down string into individual characters, probably split into an array with chars
# step 2: iterate over each element, checking that it can be spelled with the blocks, eliminate immediately any that cannnot
# step 3: iterate over each element, checking that each block is only used once
# 

BLOCKS =  %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end
  
p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')
