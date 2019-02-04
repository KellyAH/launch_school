=begin
  Write a program that takes a number from the user between 0 and 100
  and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
=end

def fetch_number
  puts "Please enter a number between 0 and 100:"
  gets.chomp.to_i
end

def evaluate_number
  number = fetch_number

  if number < 0
    "#{number} is a negative number!"
  elsif number <= 50
    "#{number} is between 0 and 50."
  elsif number <= 100
    "#{number} is between 51 and 100"
  else number < 100
    "#{number} is greater than 100"
  end
end

puts evaluate_number
