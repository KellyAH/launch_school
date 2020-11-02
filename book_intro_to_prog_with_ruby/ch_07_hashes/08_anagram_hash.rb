# URL: https://launchschool.com/books/ruby/read/hashes
#
# Challenge: Given the array...
words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

# Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in a different order.
# Your output should look something like this:

# expected result:
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

hash_of_words = {}

# 1. alphabetize the chars in each word to find out which ones contain the same characters
words.each do |word|
  word_as_array = word.chars
  # NOTE: can also use word.split(//)
  sorted_word = word_as_array.sort.join
  hash_of_words[word] = sorted_word
end

# 2. construct array of strings which will be the key for results_hash
array_of_unique_sorted_words = hash_of_words.values.uniq
# p array_of_unique_sorted_words

# 3. built results hash
# build hash where key is the sorted word and the value is an array of all the orginal words that are anagrams
results_hash = {}
hash_of_words.each do |original_word,sorted_word|
  unless results_hash.has_key? sorted_word
    results_hash[sorted_word] = [original_word]
  else
    results_hash[sorted_word] << original_word
  end
end

p results_hash
