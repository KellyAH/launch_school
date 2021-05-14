# URL: https://launchschool.com/books/ruby/read/intro_exercises
#
# 14. Take the following array:
original_array = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array
# that consists of strings containing one word.
# ex. ["white snow", etc...] → ["white", "snow", etc...]
#
# Look into using Array's map and flatten methods, as well as String's split method.

new_array = original_array.map {|string| string.split(' ')}
new_array = new_array.flatten
p new_array