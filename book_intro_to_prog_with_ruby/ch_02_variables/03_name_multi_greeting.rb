# URL: https://launchschool.com/books/ruby/read/variables
# Add another section onto name.rb that prints the name of the user 10 times.
# You must do this without explicitly writing the puts method 10 times in a row.
#
# Hint: you can use the times method to do something repeatedly.

def username
  puts 'Please enter your full name and press ENTER:'
  gets.chomp
end

def repeat_greeting_amount
  puts 'Please enter how many times you want to print a greeting and press ENTER:'
  number = gets.chomp
  number.to_i
end

# change each word in the user's name to be capitalized.
def capitalize_name(name)
  name_array = name.split
  formatted_user_name = name_array.map(&:capitalize)
  formatted_user_name.join(' ')
end

def greeting(name)
  "Hi #{capitalize_name(name)}. How are you?"
end

def print_greeting_many_times(number, name)
  number.times do
    puts greeting(name)
  end
end

def print_greeting_many_times_v02(number, name)
  counter = 0
  loop do
    puts greeting(name)
    counter += 1
    break if counter == number
  end
end

# fullfill exercise using times method
print_greeting_many_times(10, username)

puts "-" * 10
# expand on it
# prompt user for how many times they want greeting to print out.
print_greeting_many_times(repeat_greeting_amount, username)

# expand on it using loop method
print_greeting_many_times_v02(10, username)
