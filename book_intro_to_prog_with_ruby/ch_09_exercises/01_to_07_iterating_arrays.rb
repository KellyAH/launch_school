# URL https://launchschool.com/books/ruby/read/intro_exercises
#
# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# inline block
numbers.each {|number| puts number}

# multi-line block
numbers.each do |number|
  puts number
end

# 2. Same as above, but only print out values greater than 5.
puts "------ Ex 2. ------"
# inline block
numbers.each {|number| puts number if number > 5}

# multi-line block with inline if condition
numbers.each do |number|
  puts number if number > 5
end

# multi-line block with multi-line if condition
numbers.each do |number|
  if number > 5
    puts number
  end
end

# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
puts "------ Ex 3. ------"

# odd? method
result = numbers.select {|number| number.odd? }
p result

# even? method and bang !
result = numbers.select {|number| !number.even? }
p result

# modulus division
result = numbers.select {|number| number % 2 != 0 }
p result

# 4. Append 11 to the end of the original array. Prepend 0 to the beginning.
puts "------ Ex 4. ------"

#---------------------#
# Destructive methods #
#---------------------#
# methods that mutate the caller / original array
numbers.prepend(0)
numbers.append(11)
p numbers

# NOTE: prepend is an alias to unshift
# NOTE: push is an alias for append
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.unshift(0)
numbers.push(11)
p numbers

# shovel operator (mutates the caller)
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = [0] + numbers
new_array << 11
p new_array

#-------------------------#
# Non-destructive methods #
#-------------------------#
# Array class methods: + and concat (concatenation)
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
another_new_array = [0] + numbers
another_new_array.concat([11])
p another_new_array

# Array class + method (concatenation)
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
result = [0] + numbers + [11]
p result

# 5. Get rid of 11. And append a 3.
puts "------ Ex 5. ------"
