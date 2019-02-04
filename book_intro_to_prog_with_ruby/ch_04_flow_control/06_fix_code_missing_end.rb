=begin
  When you run the following code...
  You get the following error message..

  exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

  Why do you get this error and how can you fix it?
=end

# if else block is missing end
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)
