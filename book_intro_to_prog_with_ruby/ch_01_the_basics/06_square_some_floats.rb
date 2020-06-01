# URL: https://launchschool.com/books/ruby/read/basics
#
# Write a program that calculates the squares of 3 float numbers of your choosing
# and outputs the result to the screen.

# INPUT: a float number
# OUTPUT: the float number squared

def square(number)
  number**2
end

def square_manual(number)
  number * number
end

puts 'a method using ** operator'
p square(3.0)
p square(3.5)
p square(15.9)

puts '-' * 10
puts 'a method using multiplication * operator'
p square_manual(3.0)
p square_manual(3.5)
p square_manual(15.9)

puts '-' * 10
puts 'numbers stored in an array and looped thru'
floats = [3.0, 3.5, 15.9]
floats.each {|number| puts square(number)}