# URL: https://launchschool.com/books/ruby/read/intro_exercises
#
# 9. Suppose you have a hash
original_hash = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.
puts original_hash[:b]

# 2. Add to this hash the key:value pair `{e:5}`
original_hash[:e] = 5

# non mutating. creates a new hash
puts original_hash.merge({f: 6})
hash_two = {g: 7}
puts original_hash.merge(hash_two)
puts "original_hash: #{original_hash}"

# mutates original hash
puts original_hash.merge!({h: 2})
puts "original_hash: #{original_hash}"

# 3. Remove all key:value pairs whose value is less than 3.5

## using delete_if method
results_hash_01 = original_hash.delete_if {|key, value| value < 3.5}
puts "results_hash_01: #{results_hash_01}"

p "---"*5

## ERRATA
## using select method to make a new hash with desired values
# non mutating
results_hash = original_hash.select {|key, value| value > 3.5}
puts "results_hash: #{results_hash}"
puts "original_hash: #{original_hash}"

p "---"*5
# NOTE: created a new hash with values equal to original_hash to protect original_hash
new_hash = original_hash.clone
puts original_hash.object_id
puts new_hash.object_id
puts "new_hash: #{new_hash}"

# mutating
puts new_hash.select! {|key, value| value > 3.5}
puts "new_hash after select!: #{new_hash}"
puts "original_hash after select!: #{original_hash}"

p "---"*5
## Make select! return nil
# see select! method: https://ruby-doc.org/core-2.6.5/Hash.html#method-i-delete
# Equivalent to #keep_if, but returns nil if no changes were made.

puts new_hash

## make .select! return nil ##
# NOTE: Aliases make code easier to read.
# aliases keep_if does not return nil
# alias filter! is the standard method and can return nil
#
# puts mutate_result = new_hash.filter! {|key, value| value > 0}
# puts mutate_result = new_hash.keep_if {|key, value| value > 0}
puts mutate_result = new_hash.select! {|key, value| value > 0}
puts "new_hash: #{new_hash}"
puts "original_hash: #{original_hash}"
# results in nil
puts mutate_result
puts mutate_result.class