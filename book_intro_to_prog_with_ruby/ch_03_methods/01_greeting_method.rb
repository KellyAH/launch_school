# URL https://launchschool.com/books/ruby/read/methods
#
# Write a program that prints a greeting message.
# This program should contain a method called 'greeting' that
# takes a 'name' as its parameter and returns a string.

def greeting(name)
  "Hi #{name.capitalize}. How are you?"
end

def random_greeting(name)
  greetings = [
                "Konnichiwa #{name.capitalize}-san!",
                "Salut #{name.capitalize}!",
                "Hola #{name.capitalize}!",
                "Ciao #{name.capitalize}!",
                "Szia #{name.capitalize}!"
              ]
  greetings.sample
end

# complete exercise
p greeting("jin")

# expand on exercise
p random_greeting("jin")