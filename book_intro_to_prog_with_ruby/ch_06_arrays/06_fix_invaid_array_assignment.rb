# URL https://launchschool.com/books/ruby/read/arrays
#
# You run the following code...
#
names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
# ...and get the following error message:
#
# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
#
# What is the problem and how can it be fixed?
# the [] method is expecting an index integer value, but a string 'margaret' is set.
# And then an assignement operator is trying to assign 'jody' to whatever names['margaret'] evaluates to which itself errors out.
#
# So the goal is to replace 'margaret' with 'jody'
names = ['bob', 'joe', 'susan', 'margaret']
names[-1] = 'jody'
puts names

puts "-" * 10
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
puts names
