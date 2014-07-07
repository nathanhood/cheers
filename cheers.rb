# Build on the results of our in-class exploration to output, for example:

# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.

# Note: the “a” vs. “an”

# P.S.: name.methods - Object.methods
#puts Time.new
require 'date'

puts "What's your name?"
name = gets.chomp

if name.empty?
  puts "You must enter your name!"
  exit
end

puts "Your name is #{name}"
name.upcase.each_char do |char|
  if "AEFHILMNORSX".include? "#{char}"
    puts "Give me an... #{char}"
  else
    puts "Give me a... #{char}"
  end
end

puts "#{name}'s just grand!"

puts "Hey, #{name}, what's your birthday? (ex: MM/DD/YY)"
bdayInput = gets.chomp
birthday = Date.strptime(bdayInput.to_s, "%m/%d/%y")
today = DateTime.now
if birthday.yday < today.yday
  birthday = Date.new(today.year + 1, birthday.month, birthday.day)
else
  birthday = Date.new(today.year, birthday.month, birthday.day)
end
days_until = (birthday - today).to_i + 1
puts "Awesome! Your birthday is in #{days_until} days! Happy Birthday in advance!"
