# Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

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
