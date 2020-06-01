# URL: https://launchschool.com/books/ruby/read/basics
#
# Add two strings together that, when concatenated, return your first and last name as your full name in one string.
# "<Firstname> <Lastname>"
# For example, if your name is John Doe, think about how you can put "John" and "Doe" together to get "John Doe".
#
# INPUT: 2 strings, first and last name
# OUTPUT: 1 string of the full name

first_name = 'Kelly'
last_name = 'Hong'

# + operator
puts "Kelly" + " " + "Hong"
puts "Kelly" + " Hong"
puts first_name + ' ' + last_name

# string interpolation
puts "#{first_name} #{last_name}"

# shovel operator
puts "Kelly "<< "Hong"

# concat method
puts "Kelly".concat(" ", "Hong")

# prepend method
puts "Hong".prepend("Kelly", " ")