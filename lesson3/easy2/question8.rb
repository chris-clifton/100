advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice(8)
# This is wrong and returned the "g" in "things" at index 1.

advice.slice!(0, advice.index('house'))
