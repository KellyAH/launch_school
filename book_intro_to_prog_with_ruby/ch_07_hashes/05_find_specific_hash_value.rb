# URL: https://launchschool.com/books/ruby/read/hashes
#
# What method could you use to find out if a Hash contains a specific value in it?
# Write a program to demonstrate this use.

family = { uncle: "bob",
           sister: "jane",
           brother: "rob",
           aunt: "susan"
         }

target_value = "jane"

# different ways of solving the exercise.
p family.has_value? target_value

p family.key(target_value)

p family.value?(target_value)

p family.select {|k,v| v == target_value }

target_value_found = family.value?(target_value) ? "value found!" : "value NOT found!"
p target_value_found

