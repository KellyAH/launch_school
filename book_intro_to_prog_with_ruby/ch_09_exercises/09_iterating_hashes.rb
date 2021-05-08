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
## TODO how to return nil
# see select! method
# Equivalent to #keep_if, but returns nil if no changes were made.

puts mutate_result = new_hash.select! {|key, value| value < 0}
puts "new_hash: #{new_hash}"
puts "original_hash: #{original_hash}"
# results in a hash of nils?
puts mutate_result.class


if nil? == new_hash.select! {|key, value| value < 0}
  puts "is nil"
end
