# URL https://launchschool.com/books/ruby/read/methods
#
# Write a program that includes a method called multiply
# that takes two arguments and
# returns the product of the two numbers.

def multiply(first_number, secound_number)
  p "#{first_number} multiplied by #{secound_number} equals:"
  first_number * secound_number
end

# complete exercise
p multiply(2,5)

# expand on exercise
first_number = rand(1..10)
secound_number = rand(1..10)
p multiply(first_number,secound_number)