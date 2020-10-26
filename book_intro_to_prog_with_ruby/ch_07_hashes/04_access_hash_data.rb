# URL: https://launchschool.com/books/ruby/read/hashes
#
# Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts 'access name of person via [] method getting hash key value'
puts person[:name]

puts 'access name of person via fetch method'
puts person.fetch(:name)