# URL: https://launchschool.com/books/ruby/read/hashes
#
# What method could you use to find out if a Hash contains a specific value in it?
# Write a program to demonstrate this use.

family = {  uncle: "bob",
            sister: "jane",
            brother: "rob",
            aunt: "susan"
         }

puts 'NOTE: value? method and has_value? both do the same thing.'
puts family.value?("rob")
puts family.has_value?("jane")


def check_name_in_family(hash, name)
  if hash.has_value?(name)
      puts "I have a family member with the name: #{name}."
  else
    puts "I don't have a family member with the name: #{name}."
  end
end

random_name = %W[bob jane rob susan frank joe cole].sample
check_name_in_family(family, random_name)