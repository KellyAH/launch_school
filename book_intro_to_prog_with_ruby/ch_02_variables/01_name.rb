# URL: https://launchschool.com/books/ruby/read/variables
#
# Write a program called name.rb
# that asks the user to type in their name
# and then prints out a greeting message with their name included.
#
# INPUT: user's first and last name
#
# OUTPUT: "Hi []user's first] [user's last name]"

def user_name
  puts 'Please enter your full name and press ENTER:'
  gets.chomp
end

# change each word in the user's name to be capitalized.
def capitalize_name(name)
  name_array = name.split
  formatted_user_name = name_array.map(&:capitalize)
  formatted_user_name.join(' ')
end

def greeting(username)
  name = capitalize_name(username)
  "Hi #{name}. How are you?"
end

puts greeting(user_name)



