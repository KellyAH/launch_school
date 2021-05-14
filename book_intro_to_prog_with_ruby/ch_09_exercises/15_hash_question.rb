# URL: https://launchschool.com/books/ruby/read/intro_exercises
#
# 15. What will the following program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# ref: https://ruby-doc.org/core-2.6.5/Hash.html#method-i-3D-3D
#
# hsh == other_hash → true or false
# Equality—Two hashes are equal if they each contain the same number of keys and
# if each key-value pair is equal to (according to Object#==) the corresponding elements in the other hash.
#
# ANSWER:
# both hashes contain the same key value pairs even though they are in different order and
# created with different syntactical sugar.
# "These hashes are the same!" will be printed to the screen.