=begin
  Rewrite your program from exercise 3 using a case statement. Wrap this new case statement in a method and make sure it still works.
=end

def fetch_number
  puts "Please enter a number between 0 and 100:"
  gets.chomp.to_i
end

def evaluate_number
  number = fetch_number

  case
    when number < 0 then "#{number} is a negative number!"
    when number <= 50 then "#{number} is between 0 and 50."
    when number <= 100 then "#{number} is between 51 and 100"
    else "#{number} is greater than 100"
  end
end

puts evaluate_number
