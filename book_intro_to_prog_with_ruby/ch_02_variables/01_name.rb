# Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.

def fetch_name
  puts "Please enter your name:"
  gets.chomp
end

def greeting(name)
  raw_name_array = name.split
  capitalized_name_array = raw_name_array.each {|word| word.capitalize!}
  formatted_name = capitalized_name_array.join(' ')
  "Hello #{formatted_name}!"
end

puts greeting(fetch_name)
