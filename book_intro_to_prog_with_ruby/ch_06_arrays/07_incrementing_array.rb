=begin
  Write a program that iterates over an array
  and builds a new array that is the result of incrementing each value in the original array
  by a value of 2.
  You should have two arrays at the end of this program,
  The original array and the new array you've created.
  Print both arrays to the screen using the p method instead of puts.
=end

STARTING_ARRAY = [1, 2, 3, 4, 5]

puts "Result when using map method:"
modified_array = STARTING_ARRAY.map {|number| number + 2}
p STARTING_ARRAY
p modified_array

puts "Result when not using map method:"
secound_modified_array = []
STARTING_ARRAY.each {|number| secound_modified_array << number + 2}
p STARTING_ARRAY
p secound_modified_array
