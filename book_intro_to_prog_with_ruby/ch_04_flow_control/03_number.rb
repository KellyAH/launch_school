# URL: https://launchschool.com/books/ruby/read/flow_control
#
# Write a program that takes a number from the user between 0 and 100
# and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

def prompt_for_user_input
  puts "Please enter a number between 0 and 100"
  gets.chomp.to_i
end

def valid_user_input?(number)
  number.negative? == false && number <= 100 ? true : false
end

def evaluate_user_input
  number = prompt_for_user_input
  while valid_user_input?(number) == false
    number = prompt_for_user_input
  end
  number
end

def condition_check(number)
  if number <= 50
    p "#{number} is between 0 and 50."
  elsif number <= 100
    p "#{number} is between 51 and 100"
  else number > 100
    p "#{number} is greater than 100"
  end
end

# finish exercise
condition_check(evaluate_user_input)

# expand on exercise by randomly generating the number
number = rand(101)
condition_check(number)