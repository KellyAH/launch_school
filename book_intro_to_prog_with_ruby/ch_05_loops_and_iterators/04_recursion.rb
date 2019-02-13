# Write a method that counts down to zero using recursion.

# TODO read more deeply the recursion section in https://launchschool.com/books/ruby/read/loops_iterators
# good walkthru: https://www.youtube.com/watch?v=6FE0V7kOHLI
# another REALLY good explanation: https://www.youtube.com/watch?v=72hal4Cp_2I
# code examples: https://www.leighhalliday.com/recursion-in-ruby

def fetch_number
puts "please enter a number. The program will then count down to zero from the number you entered."
  gets.chomp.to_i
end

def count_down(number)
  puts number

  if number == 0    # condition that controls when to terminate the recursion i.e. NOT call the method recursively
    1
  elsif number < 0  # handle negative number
    puts "This method won't work with negative numbers. You inputted number: #{number}"
  else
    # recursion is just a method that calls itself
    # in this case the ONLY value that is changing is the value passed into the method.
    # the argument is being decreased to break up the starting number into smaller parts
    count_down(number - 1)
  end
end

count_down(5)
puts "-" * 10

count_down(1)
puts "-" * 10

count_down(0)
puts "-" * 10

count_down(10)
puts "-" * 10

count_down(-3)
puts "-" * 10

count_down(fetch_number)
puts "-" * 10
