# URL: https://launchschool.com/books/ruby/read/intro_exercises

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

# odd? method
result = numbers.select {|number| number.odd? }
p result

# even? method and bang !
result = numbers.select {|number| !number.even? }
p result

# modulus division
result = numbers.select {|number| number % 2 != 0 }
p result
