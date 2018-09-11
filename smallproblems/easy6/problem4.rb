def esrever(array)
  temp = array.clone
  array.map! do |e|
    temp.pop
  end
  array
end


 p esrever([1, 2, 3, 4, 5])

 # Smart solution from student submissions.  Since .map returns the original array, we can deconstruct the clone and
 # add its pieces back to the original.