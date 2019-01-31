# Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?

def scream(words)
  words = words + "!!!!"
  puts words
end

# refactored for brevity
def modified_scream(words)
  puts words + "!!!!"
end

scream("Yippeee")
modified_scream("Yippeee")
