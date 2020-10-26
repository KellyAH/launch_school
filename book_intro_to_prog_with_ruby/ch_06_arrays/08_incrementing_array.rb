# URL https://launchschool.com/books/ruby/read/arrays
#
# Write a program that iterates over an array and builds a new array
# that is the result of incrementing each value in the original array by a value of 2.
# You should have two arrays at the end of this program,
# The original array and the new array you've created.
# Print both arrays to the screen using the p method instead of puts.

# using map method
def increase_array_values(array, number)
  array.map {|num| num + number}
end

arr = [1, 2, 3, 4, 5, 6, 7]

result = increase_array_values(arr, 2)
p arr
p result

# using each method
original_array = [1, 2, 3, 4, 5, 6, 7]
new_array = []

original_array.each do |num|
  new_array << (num + 2)
end

p original_array
p new_array