# URL https://launchschool.com/books/ruby/read/arrays
#
# Below we have given you an array and a number.
# Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

# using .include method
def found_number_in_array?(array, number)
  array.include?(number)
end

p "Did number #{number} exist in the array: #{arr}?"
p found_number_in_array?(arr, number)

# using manual check method
def found_number_in_array_v2?(array, number)
  found_number = false
  array.each {|item| found_number = true if item == number}
  found_number
end

p "Did number #{number} exist in the array: #{arr}?"
p found_number_in_array_v2?(arr, number)

# using manual check method to return index where number was found
def found_number_in_array_v3?(array, number)
  array.each { |item | p "#{number} was found at index." if item == number}
end

p "Did number #{number} exist in the array: #{arr}?"
p found_number_in_array_v3?(arr, number)

# using manual check method to return index where number was found
def found_number_in_array_v4?(array, number)
  array.each_with_index { |item, index| p "#{number} was found at index: #{index}" if item == number}
end

p "Did number #{number} exist in the array: #{arr}?"
p found_number_in_array_v4?(arr, number)

# not creating a method and just using a multi line each block
arr.each do |item|
  puts "#{number} was found in the array!" if item == number
end