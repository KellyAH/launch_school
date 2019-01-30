# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

# debugging tracing to see what the method is doing
# I NEEDED to expose all these values JUST TO SEE what the heck was happening in the loop .
# so I could see why my code was returning or multiplying wrong values

# def factorial(number)
#   counter = 1
#   product = number
#   puts "product before loop: #{product}"
#
#   loop do
#     puts "product at start of loop: #{product}"
#     puts "counter before decrement: #{counter}"
#     puts "calculation: #{product} * #{number - counter}"
#
#     product = product * (number - counter)
#     puts "product after reassignment: #{product}"
#
#     counter += 1
#     puts "counter after decrement: #{counter}"
#     puts "-" * 8
#
#     break if counter >= number
#
#   end
#
#   return product
# end

def factorial(number)
  counter = 1
  product = number

  loop do
    product = product * (number - counter)
    counter += 1
    break if counter >= number
  end
  return product
end

puts "The factorial of the the number 5 is #{factorial(5)}"
puts "The factorial of the the number 6 is #{factorial(6)}"
puts "The factorial of the the number 7 is #{factorial(7)}"
puts "The factorial of the the number 8 is #{factorial(8)}"
