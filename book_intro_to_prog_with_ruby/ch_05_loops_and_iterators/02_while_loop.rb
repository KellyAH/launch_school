# URL: https://launchschool.com/books/ruby/read/loops_iterators
#
# 2. Write a while loop that takes input from the user,
# performs an action,
# and only stops when the user types "STOP".
# Each loop can get info from the user.

p "Enter a command you want me to print to the screen or input 'STOP' "
user_input = gets.chomp
stop_keyword = "STOP"

while user_input != stop_keyword do
  p "user input has been lowercased to be: #{user_input.downcase}."
  p "what command would like me to print to the screen now?"
  user_input = gets.chomp
end