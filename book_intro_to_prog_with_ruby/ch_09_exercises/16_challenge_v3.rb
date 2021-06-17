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

keys.zip(contact_data)
#=> [[:email, "joe@email.com"], [:address, "123 Main st."], [:phone, "555-123-4567"]]


# using Hash class method []
# see https://ruby-doc.org/core-2.6.5/Hash.html#method-c-5B-5D
# which is different than the Hash object instance method that looks the same []
# see https://ruby-doc.org/core-2.6.5/Hash.html#method-i-5B-5D
contacts = Hash[keys.zip(contact_data)]
p contacts