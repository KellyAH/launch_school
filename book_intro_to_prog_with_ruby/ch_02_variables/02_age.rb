# URL: https://launchschool.com/books/ruby/read/variables
# Write a program called age.rb that asks a user how old they are
# and then tells them how old they will be in 10, 20, 30 and 40 years.
#
# E.g.
# output of age.rb for someone 20 yrs old
# How old are you?
# In 10 years you will be:
# 30
# In 20 years you will be:
# 40
# In 30 years you will be:
# 50
# In 40 years you will be:
# 60

YEARS = [10,20,30,40]

def fetch_user_age
  puts "How old are you?"
  gets.chomp.to_i
end

# using for loop
def print_future_ages(age)
  for year in YEARS
    puts "In #{year} years you will be: #{age + year}"
  end
end

# using each loop
def print_future_ages_v02(age)
  YEARS.each {|year| puts "In #{year} years you will be: #{age + year}"}
end

age = fetch_user_age
print_future_ages(age)

age = fetch_user_age
print_future_ages_v02(age)
