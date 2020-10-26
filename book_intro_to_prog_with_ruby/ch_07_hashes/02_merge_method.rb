# URL: https://launchschool.com/books/ruby/read/hashes
#
# Look at Ruby's merge method. Notice that it has two versions.
# # What is the difference between merge and merge!?
# Write a program that uses both and illustrate the differences.

family = {  brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
         }

friends = { college: ["bob", "joe", "steve"],
            zumba: ["jane", "jill", "beth"],
          }


contacts = family.merge(friends)
p "merge of family hash with friends hash results in: #{contacts}"
p "family hash contains: #{family}"
p "friends hash contains: #{friends}"
p 'RESULT: merge method will NOT alter the original value of the hash it is invoked on.'

p "-" * 10

cats = { alive: ["frank","rob","david"],
         dead: ["mary","sally","susan"]
       }

dogs = { adopted: ["bob", "joe", "steve"],
         hospitalized: ["jane", "jill", "beth"],
       }

pets = cats.merge!(dogs)
p "mutated merge of cats hash with dogs hash results in: #{pets}"
p "cats hash contains: #{cats}"
p "dogs hash contains: #{dogs}"

p 'RESULT: merge! is a mutating method which will alter the original data of the hash it was called on.'
p 'In this case, the cats hash has been mutated.'