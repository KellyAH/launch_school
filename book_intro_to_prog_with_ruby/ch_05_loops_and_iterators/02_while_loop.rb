=begin
 Write a while loop that takes input from the user,
 performs an action,
 and only stops when the user types "STOP".
 Each loop can get info from the user.
=end
user_input = 'GO'

while user_input != 'STOP'
  puts "input a command. (FYI - 'STOP' command will end this program): "
  user_input = gets.chomp
  puts "You entered command: #{user_input}."
end
