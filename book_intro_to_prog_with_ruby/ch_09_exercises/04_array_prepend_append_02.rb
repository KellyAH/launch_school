# URL: https://launchschool.com/books/ruby/read/intro_exercises
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Exercise 4. Appended 11 to the end of the original array. Prepended 0 to the beginning.
numbers.prepend(0)
numbers.append(11)
p numbers

# 5. Get rid of 11. And append a 3.
numbers.delete(11)
numbers.append(3)
p numbers

