# URL https://launchschool.com/books/ruby/read/intro_exercises
#
# 2. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
# only print out values greater than 5.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

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
