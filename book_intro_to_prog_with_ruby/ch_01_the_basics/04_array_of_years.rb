# URL: https://launchschool.com/books/ruby/read/basics
#
#  Use the dates from the previous example and store them in an array.
#  Then make your program output the same thing as exercise 3.

years = [2015, 2021, 2020, 2002, 2011, 2013]

puts '-' * 10
puts 'using direct reference via index'
puts years[0]
puts years[1]
puts years[2]
puts years[3]
puts years[4]
puts years[5]

puts '-' * 10
puts 'using puts'
puts years

puts '-' * 10
puts 'using each method'
years.each {|year| puts year}

puts '-' * 10
puts 'using each_index method'
years.each_index{|index| puts years[index]}

puts '-' * 10
puts 'using values_at method'
puts years.values_at(0,1, 2, 3, 4, 5)