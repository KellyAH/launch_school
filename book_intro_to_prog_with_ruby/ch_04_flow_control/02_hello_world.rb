# URL: https://launchschool.com/books/ruby/read/flow_control
#
# Write a method that takes a string as argument.
# The method should return a new, all-caps version of the string,
# only if the string is longer than 10 characters.
#
# Example: change "hello world" to "HELLO WORLD".
# (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

def uppercase_format(string)
  string.length > 10 ? string.upcase : string
end

puts uppercase_format("hello world")
puts uppercase_format("hello")
puts uppercase_format("aatenChars")

# ------------- #
p "---- USE CASE STATEMENT ---"
def uppercase_format_v02(string)
  boolean = string.length > 10

  case boolean
  when true
    string.upcase
  when false
    string
  else
    "the string was: #{string}"
  end
end

puts uppercase_format_v02("hello world")
puts uppercase_format_v02("hello")
puts uppercase_format_v02("aatenChars")

# ------------- #
p "---- USE IF STATEMENT ---"
def uppercase_format_v03(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts uppercase_format_v03("hello world")
puts uppercase_format_v03("hello")
puts uppercase_format_v03("aatenChars")

# ------------- #
p "---- USE UNLESS STATEMENT ---"
def uppercase_format_v04(string)
  unless string.length > 10
    string
  else
    string.upcase
  end
end

puts uppercase_format_v04("hello world")
puts uppercase_format_v04("hello")
puts uppercase_format_v04("aatenChars")


# ------------- #
# expand on exercise
p "---- USE DYNAMIC NUMBER ---"
def dynamic_uppercase_format(string, number)
  string.length > number ? string.upcase : string
end

puts dynamic_uppercase_format("hello world", 5)
puts dynamic_uppercase_format("hello", 10)
puts dynamic_uppercase_format("aatenChars", 0)