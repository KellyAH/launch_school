# URL: https://launchschool.com/books/ruby/read/basics
#
# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

# A factoral is:
# Factorials are products of every whole number from 1 to n.
# For example, if n is 3 then 3! is 3 x 2 x 1 = 6.
#
# INPUT: 5, 6, 7, 8
# OUTPUT: the factorial calculation of the numbers 5, 6, 7, and 8.

puts '-' * 10
puts 'not using recursion'

# returns an array of the list of factorial numbers for a given number
def factorial_numbers(number)
  factorials = [number]
  number.times do
    if number > 1  # <-- ensures 0 is not pushed into the factorials array
      factorials << number - 1
      number -= 1
    end
  end
  factorials
end

def factorial_non_recursion(numbers)
  numbers.each do |number|
    result = 1  # <-- reset result to 1 so factorial results from other numbers aren't combined together
    factorials = factorial_numbers(number)
    factorials.each {|number| result *= number}
    puts "The factorial of the the number #{number} is #{result}"
  end
end

numbers = [5, 6, 7, 8]
factorial_non_recursion(numbers)

puts '-' * 10
puts 'using recursion'
def factorial(number)
  if number == 1  # <-- BASE CASE: scenario that tells recusion when to stop
    return 1
  else
    number * factorial(number - 1)  # <-- RULE: determines when recursion should continue
  end
end

puts "The factorial of the the number 5 is #{factorial(5)}"
puts "The factorial of the the number 6 is #{factorial(6)}"
puts "The factorial of the the number 7 is #{factorial(7)}"
puts "The factorial of the the number 8 is #{factorial(8)}"
