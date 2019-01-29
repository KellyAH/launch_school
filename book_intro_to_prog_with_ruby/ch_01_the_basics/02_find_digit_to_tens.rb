=begin
  Use the modulo operator, division, or a combination of both to take a 4 digit number
  and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
=end

FOUR_DIGIT_NUMBER = 5328

puts "The digit in the thousands place for #{FOUR_DIGIT_NUMBER} is #{FOUR_DIGIT_NUMBER/1000}"
puts "The digit in the hundreds place for #{FOUR_DIGIT_NUMBER} is #{FOUR_DIGIT_NUMBER%1000/100}"
puts "The digit in the tens place for #{FOUR_DIGIT_NUMBER} is #{FOUR_DIGIT_NUMBER%100/10}"
puts "The digit in the ones place for #{FOUR_DIGIT_NUMBER} is #{FOUR_DIGIT_NUMBER%10}"
