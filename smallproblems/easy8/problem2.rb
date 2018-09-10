# Mad lib program

puts 'Enter a noun:'
noun = gets.chomp

puts 'Enter a verb:'
verb = gets.chomp

puts 'Enter an adjective:'
adjective = gets.chomp

puts 'Enter an adverb:'
adverb = gets.chomp

madlib1 = "One day a #{noun} decided to go #{verb}.  The #{noun} discovered #{adverb} that it was not a good idea and #{verb} was too #{adjective} to do again."
madlib2 = "Hi #{noun}! Welcome to the #{verb} gym! Please #{adverb} put your #{adjective} things away and #{verb} over here to get started."
madlib3 = "If you like #{noun}s and getting #{verb} in the rain. You can #{adverb} get the hell out of here because we don't mess with stuff that #{adjective}."
madlib4 = "Chances are, this madlib is #{adverb} making you #{adjective}.  I guess this kind of #{verb} just isn't for #{noun}'s."

madlibarray = [madlib1, madlib2, madlib3, madlib4]

puts madlibarray.sample