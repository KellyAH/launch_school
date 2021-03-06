# URL: https://launchschool.com/books/ruby/read/intro_exercises
#
# 16. Challenge: In exercise 11, we manually set the contacts hash values one by one.
# Now, programmatically loop or iterate over the contacts hash from exercise 11,
# and populate the associated data from the contact_data array.
#
# Hint: you will probably need to iterate over ([:email, :address, :phone]),
# and some helpful methods might be the Array shift and first methods.
#
# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#  }

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
keys = [:email, :address, :phone]

p contacts

# assigned keys with empty values
keys.each do |key|
  # puts "key: #{key}"
  empty_hash = contacts["Joe Smith"]
  empty_hash[key] = nil
end

 p contacts


# # using key value params
contact_data.each do |value|
  contacts["Joe Smith"].each_key do |key|
    # iterating thru arrays/hashes reads data from those objs but does not change access scope.
    # E.g. iterating thru this hash does NOT mean i'm inside it and thus cannot invoke the hash itself.
    # in ruby, iterating a hash/array does not explode it.
    contacts["Joe Smith"][key] = value
  end
end




# # using entries
# contacts["Joe Smith"].each do |entry|


p contacts
# using zip