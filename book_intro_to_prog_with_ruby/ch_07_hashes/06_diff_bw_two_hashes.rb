# URL: https://launchschool.com/books/ruby/read/hashes
#
# Given the following code...
#
# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}
#
# What's the difference between the two hashes that were created?

x = "hi there"
my_hash = {x: "some value"} # <- hash key is a symbol
my_hash2 = {x => "some value"}  # <- hash key is a variable referencing "hi there"
# so the hash is really {"hi there" => "some value"}