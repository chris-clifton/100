# Write madlibs program that reads in some text from a file you've created, then plugs in a selection of randomized 
# nouns, adverbs, adjective, and adverbs into text and prints it.  

# List of "libs" can be built in program but text data should come from other external source

ADJECTIVES = %w(radical tubular sick gnarly wicked).freeze
NOUNS = %w(shredder ripper killer thrasher monster).freeze
VERBS = %w(shred rip kill thrash destroy).freeze
ADVERBS = %w(totally literally seriously righteously insanely).freeze

File.open('sampletext.txt') do |file|
  file.each do |line|
    puts format(line, noun:       NOUNS.sample,
                      verb:       VERBS.sample,
                      adjective:  ADJECTIVES.sample,
                      adverb:     ADVERBS.sample)
  end
end

