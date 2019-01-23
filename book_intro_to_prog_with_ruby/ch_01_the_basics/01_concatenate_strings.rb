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
