# URL: https://launchschool.com/books/ruby/read/basics
#
# Write a program that uses a hash to store a list of movie titles with the year they came out.
# Then use the puts command to make your program print out the year of each movie to the screen.
#
# The output for your program should look something like this.
# 1975
# 2004
# 2013
# 2001
# 1981

movies = {
  furious_7: 2015,
  f9: 2021,
  bloodshot: 2020,
  xxx: 2002,
  fast_five: 2011,
  riddick: 2013
}

puts "-" * 10
puts 'fetching value based on the key'
puts movies[:furious_7]
puts movies[:f9]
puts movies[:bloodshot]
puts movies[:xxx]
puts movies[:fast_five]
puts movies[:riddick]

puts "-" * 10
puts 'using each method'
movies.each{|key, value| puts value}

puts "-" * 10
puts 'using each_value method'
movies.each_value { |value| puts value}

puts "-" * 10
puts 'using fetch_values method'
puts movies.fetch_values(:furious_7, :f9, :bloodshot, :xxx, :fast_five, :riddick)

puts "-" * 10
puts 'using values method'
puts movies.values