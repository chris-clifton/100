# input: string
# output: string
# rules: last name, comma, space, first name
# algorithm: convert to array, reverse array, conver back to string with comma and space using join



def swap_name(string)
  string.split.reverse.join(', ')
 end


p swap_name('Joe Roberts')
p swap_name('Chris Clifton')
p swap_name('Katie Kik')
