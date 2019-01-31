# Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.

def fetch_full_name
  puts "Please enter your first name:"
  first_name = gets.chomp
  puts "Please enter your last name:"
  last_name = gets.chomp
  "#{first_name} #{last_name}"
end

def greeting(name)
  raw_name_array = name.split
  capitalized_name_array = raw_name_array.each {|word| word.capitalize!}
  formatted_name = capitalized_name_array.join(' ')
  "Hello #{formatted_name}!"
end

puts greeting(fetch_full_name)
