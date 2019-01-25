=begin
	Add two strings together that, when concatenated, return your first and last name as your full name in one string.
	"<Firstname> <Lastname>"
	For example, if your name is John Doe, think about how you can put "John" and "Doe" together to get "John Doe".
=end

# string concatenation
puts "John" + " " + "Doe"

# string interpolation
first_name = 'John'
last_name = 'Doe'
puts "#{first_name} #{last_name}"

# array shovel method
shoveled_name = first_name << " " << last_name 
puts shoveled_name


# method definition
def full_name(first_name, last_name)
	"#{first_name} #{last_name}"
end

puts full_name('John', 'Doe')
