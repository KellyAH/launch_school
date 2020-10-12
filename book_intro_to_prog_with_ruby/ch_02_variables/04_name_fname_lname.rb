# URL: https://launchschool.com/books/ruby/read/variables
#
# Modify name.rb again so that it first asks the user
# for their first name, saves it into a variable,
# and then does the same for the last name.
# Then outputs their full name all at once.


def username
  puts 'Please enter your first name and press ENTER:'
  first_name = gets.chomp
  puts 'Please enter your last name and press ENTER:'
  last_name = gets.chomp
  [first_name, last_name]
end

# change each word in the user's name to be capitalized.
def capitalize_name(name)
  formatted_user_name = name.map(&:capitalize)
  formatted_user_name.join(' ')
end

def greeting(username)
  name = capitalize_name(username)
  "Hi #{name}. How are you?"
end

puts greeting(username)


