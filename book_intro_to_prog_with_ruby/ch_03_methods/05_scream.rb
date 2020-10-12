# URL: https://launchschool.com/books/ruby/read/methods
#
# Edit the method definition in exercise #4
# so that it does print words on the screen.
# 2) What does it return now?
#
# def scream(words)
#   words = words + "!!!!"
#   return
#   puts words
# end
#
# scream("Yippeee")


def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
# => nil
# because puts returns nil