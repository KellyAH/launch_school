# You run the following code...
#
# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
# ...and get the following error message:
#
# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

names = ['bob', 'joe', 'susan', 'margaret']
names[-1] = 'jody'
puts names

puts "-" * 10
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
puts names
