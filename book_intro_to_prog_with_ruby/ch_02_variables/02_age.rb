=begin
Write a program called age.rb that asks a user how old they are
and then tells them how old they will be in 10, 20, 30 and 40 years.
E.g.
# output of age.rb for someone 20 yrs old

How old are you?
In 10 years you will be:
30
In 20 years you will be:
40
In 30 years you will be:
50
In 40 years you will be:
60
=end

def fetch_age
  puts "How old are you?"
  gets.chomp.to_i
end

def print_future_ages(age)
  years = [10,20,30,40]

  for year in years
    puts "In #{year} years you will be: #{age + year}"
  end
end

print_future_ages(fetch_age)
