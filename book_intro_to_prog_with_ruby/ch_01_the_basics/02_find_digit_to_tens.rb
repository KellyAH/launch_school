# URL: https://launchschool.com/books/ruby/read/basics
#
# Use the modulo operator, division, or a combination of both to take a 4 digit number
# and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

# NOTES:
#
# INPUT: 4 digit number, E.g. 4321
#
# OUTPUT:
# E.g.
# Digit in the thousands place: 4
# Digit in the hundreds place: 3
# Digit in the tens place: 2
# Digit in the ones place: 1

def captured_number
  puts "Enter a 4 digit number and press ENTER:"
  gets.chomp.to_i
end

starting_number = captured_number

while starting_number.negative? || starting_number.digits.count > 4 || starting_number.digits.count < 4
  starting_number = captured_number
  # NOTE: I did not use starting_number.digits.count to determine integer length
  # because it cannot handle negative numbers
  break if starting_number.to_s.split('').size == 4
end

thousands = starting_number/1000
hundreds = starting_number%1000/100
tens = starting_number%1000%100/10
ones = starting_number%1000%10

puts "the number in the thousands place is: #{thousands}"
puts "the number in the hundreds place is: #{hundreds}"
puts "the number in the tens place is: #{tens}"
puts "the number in the ones place is: #{ones}"


