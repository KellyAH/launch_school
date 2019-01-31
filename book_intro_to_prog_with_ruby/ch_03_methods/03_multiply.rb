# Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

first_number = rand(100)
secound_number = rand(100)

def multiply(first_number, secound_number)
  first_number * secound_number
end

puts "#{first_number} multiplied by #{secound_number} equals: #{multiply(first_number,secound_number)}"
