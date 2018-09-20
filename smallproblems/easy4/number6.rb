def running_totals(array)
  sum = 0
  array.map { |value| sum += value }
end

running_total([2, 5, 13])
running_total([14, 11, 7, 15, 20])
running_total([3])
running_total([])