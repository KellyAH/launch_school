# URL: https://launchschool.com/books/ruby/read/variables
#
# Write a program called name.rb
# that asks the user to type in their name
# and then prints out a greeting message with their name included.
#
# INPUT: user's first and last name
#
# OUTPUT: "Hi []user's first] [user's last name]"

puts 'Please enter your full name and press ENTER:'

user_name_raw = gets.chomp

# change each word in the user's name to be capitalized.
name_array = user_name_raw.split

formatted_user_name = name_array.map do |name|
                        p name.capitalize
                      end

final_user_name = formatted_user_name.join(' ')

puts "Hi #{final_user_name}. How are you?"

