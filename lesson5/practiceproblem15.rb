# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]


arr.select do |key, value|
  value.each do |number|
    number % 2 == 0
  end
end

# did not get into the hashes invididually at first and then missed a ton of code
# at least called the correct .select method

arr.select do |hash|
  hash.all? do |key, value|
    value.all? do |num|
      num.even?
    end
  end
end

