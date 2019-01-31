  # Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.

  def fetch_name
    puts "Please enter your name:"
    gets.chomp
  end

  def greeting(name)
    raw_name_array = name.split
    capitalized_name_array = raw_name_array.each {|word| word.capitalize!}
    formatted_name = capitalized_name_array.join(' ')
    "Hello #{formatted_name}!"
  end

  def print_greeting_many_times(number)
    greeting = greeting(fetch_name)
    number.times do
      puts greeting
    end
  end

print_greeting_many_times(10)
