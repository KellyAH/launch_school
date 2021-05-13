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