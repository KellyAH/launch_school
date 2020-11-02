# URL: https://launchschool.com/books/ruby/read/hashes
#
# Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p 'access name of person via [] method getting hash key value:'
p person[:name]

p 'access name of person via fetch method:'
p person.fetch :name