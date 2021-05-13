# URL: https://launchschool.com/books/ruby/read/loops_iterators
#
# 4. Write a method that counts down to zero using recursion.
#
# good video explanation of recursion: https://en.hexlet.io/courses/intro_to_programming/lessons/recursion/theory_unit
# good walkthru: https://www.youtube.com/watch?v=6FE0V7kOHLI
# another REALLY good explanation: https://www.youtube.com/watch?v=72hal4Cp_2I
# code examples: https://www.leighhalliday.com/recursion-in-ruby

# fullfill exercise
def count_down_to_zero(number)
  p "number is: #{number}"
  # base case - when number is zero we want to stop recursion loop
  if number != 0
    count_down_to_zero(number - 1)
  end
end

starting_number = 10
p "starting_number is: #{starting_number}"
count_down_to_zero(starting_number)

# make it more dynamic
def fetch_number
  p "please enter a number. The program will then count down to zero from the number you entered."
  gets.chomp.to_i
end

def valid_number?(number)
  if number.negative? || number < 0
    false
  else
    true
  end
end

def evaluated_number
  number = fetch_number

  while valid_number?(number) == false
    p "Please enter a positive number. You entered negative number: #{number}"
    number = gets.chomp.to_i
  end
  number
end

def count_down(number)
  p number

  if number != 0  # condition that controls when to terminate the recursion i.e. NOT call the method recursively
    # recursion is just a method that calls itself
    # in this case the ONLY value that is changing is the value passed into the method.
    # the argument is being decreased to break up the starting number into smaller parts
    count_down(number - 1)
  end
end

number = evaluated_number
count_down(number)
