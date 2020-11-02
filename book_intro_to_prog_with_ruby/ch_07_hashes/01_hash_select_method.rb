# URL: https://launchschool.com/books/ruby/read/hashes
#
# Given a hash of family members, with keys as the title and an array of names as the values,
# use Ruby's built-in select method to gather only immediate family members' names into a new array.

# FYI
# Hash#select method Returns a new hash consisting of entries for which the block returns true.
# Immediate family members is sisters and brothers

family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank","rob","david"],
           aunts: ["mary","sally","susan"]
         }

immediate_family_members = family.select {|k,v| k == :sisters || k == :brothers}
immediate_family_members_names = immediate_family_members.values.flatten

p immediate_family_members_names
p family