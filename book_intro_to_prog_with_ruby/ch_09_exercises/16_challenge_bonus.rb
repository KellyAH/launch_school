# URL: https://launchschool.com/books/ruby/read/intro_exercises
#
# 16. Challenge:Bonus In exercise 11, we manually set the contacts hash values one by one.
# Now, programmatically loop or iterate over the contacts hash from exercise 11,
# and populate the associated data from the contact_data array.
#
# Hint: you will probably need to iterate over ([:email, :address, :phone]),
# and some helpful methods might be the Array shift and first methods.

# As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.
# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
keys = [:email, :address, :phone]

# alt 1
# contacts.each_with_index do |(key, _value_), index|
#   contacts[key] = Hash[keys.zip(contact_data[index])]
# end
#
# p contacts

# ALt 2
# contacts.keys.each_with_index do |key, index|
#   contacts[key] = Hash[keys.zip(contact_data[index])]
# end
#
# p contacts

# alt 3
# contacts.keys.each.with_index do |key, index|
#   contacts[key] = Hash[keys.zip(contact_data[index])]
# end
#
# p contacts

# keys.zip(contact_data)
# contacts.each.with_index
# .each creates a enumerator
# .with_index
#
# are each.with_index == each_with_index => false but functionally equal
p contacts.each
p contacts.each_with_index

p contacts.keys
p contacts.keys.each_with_index

p contacts.keys
p contacts.keys.each
p contacts.keys.each.with_index
