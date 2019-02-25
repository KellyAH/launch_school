# Given a hash of family members, with keys as the title and an array of names as the values,
# use Ruby's built-in select method to gather only immediate family members' names into a new array.

# Notes
# Hash#select method Returns a new hash consisting of entries for which the block returns true.
# immediate family members is sisters and brothers

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
         }


immediate_family = family.select do |key, value|
  key == :brothers || key == :sisters
end

p immediate_family.values.flatten