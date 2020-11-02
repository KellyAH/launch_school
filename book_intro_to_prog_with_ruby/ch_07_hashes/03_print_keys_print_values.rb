# URL: https://launchschool.com/books/ruby/read/hashes
#
# Using some of Ruby's built-in Hash methods,
# write a program that loops through a hash and prints all of the keys.
# Then write a program that does the same thing except printing the values.
# Finally, write a program that prints both.

family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank","rob","david"],
           aunts: ["mary","sally","susan"]
         }

# complete the exercise:
family.each {|key, _value| print key}
family.each {|_key, value| puts value}
family.each {|key,value| p "key: #{key} has value: #{value}"}

# EXPANDED UPON EXERCISE
family.each_key {|key| puts key }
family.each_value {|value| puts value}