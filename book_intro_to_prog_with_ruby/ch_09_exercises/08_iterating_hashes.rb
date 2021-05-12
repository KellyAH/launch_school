# 8. Create a Hash, with one key-value pair, using both Ruby syntax styles.

hash_one = {'a' => 1, 'b' => 2 }
hash_two = { :a => 1, :b => 2 }

# this syntax only works for keys that are symbols!
hash_three =  { a: 1, b: 2 }

## NOT PASSING A DEFAULT KEY VALUE ##
hash_four = Hash.new
hash_four[:a] = 1
hash_four[:b] = 2
# if no obj passed into Hash.new, then a default value is not set
# for keys that don't exist
puts hash_four[:c]
puts hash_four[:c].class

## PASSING A DEFAULT KEY VALUE ##
# If obj is specified, this single object will be used for all default values.
hash_five = Hash.new("default value")
hash_five[:a] = 1
hash_five[:b]
hash_five["c"]
puts hash_five
puts hash_five[:b]
puts hash_five["c"]

#INFO: is puts/print hash must pass it with paranthesis
p ({ a: 1, b: 2 })
puts ({ a: 1, b: 2 })
print ({ a: 1, b: 2 })
print ({ :a => 1, :b => 2})

puts hash_one
puts hash_one
puts hash_two
puts hash_three
puts hash_four

## PASSING A BLOCK TO GENERATE HASH KEY VALUES ON THE FLY ##
# This is an extension of the default value
# it makes the default value dependent on the key
# If a block is specified, it will be called with the hash object and the key, and should return the default value.
# It is the block’s responsibility to store the value in the hash if required.

hash_six = Hash.new {|hash, key| hash[key] = "the puppy is #{key}"}
hash_six["happy"]
hash_six["sad"]
hash_six["asleep"]
puts hash_six

hash_math = Hash.new {|hash, key| hash[key] = 2 * key }
hash_math[5]
puts hash_math

# USE TURNERY IN BLOCK
# note below is messy to read. not reccomended.
hash_fruit = Hash.new {|hash, key| hash[key] = key == "banana" ? "yellow" : "dunno"}
hash_fruit["banana"]
hash_fruit["apple"]
puts hash_fruit