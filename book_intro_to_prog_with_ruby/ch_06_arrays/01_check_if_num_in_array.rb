# Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3


# using include method

if arr.include?(number)
  puts "number: #{number} exists in the array"
end


# using a iterator
arr.each do |num|
  if num == number
    puts "number: #{num} exists in the array"
  end
end


# using select method to return array of matching number
puts "number: #{number} exists in the array" if arr.select {|num| num == number} == [3] 
