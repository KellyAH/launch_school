# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

def factorial(number)
  product = []

  loop do
    product = number * (number - 1)
    p product

    number -= 1

    break if number <= 1
  end

  return product
end

puts factorial(5)
