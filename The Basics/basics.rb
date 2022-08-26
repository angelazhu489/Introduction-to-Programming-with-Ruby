# 1 - Add two strings together that, when concatenated, return your first and last name as your full name in one string.
puts "Angela " + "Zhu"

# 2 - Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 
# 1) thousands place 2) hundreds place 3) tens place 4) ones place
puts 1234 % 10 # ones
puts 1234 % 100 / 10 # tens
puts 1234 % 1000 / 100 # hundreds
puts 1234 / 1000 # thousands

=begin
Solution

thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 1000 % 100 / 10
ones = 4936 % 1000 % 100 % 10

=end

# 3 - Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command 
# to make your program print out the year of each movie to the screen. The output for your program should look something like this.
movies = {shutter_island: 2009,
	interstellar: 2015,
	forest_gump: 2010
}

puts movies[:shutter_island]
puts movies[:interstellar]
puts movies[:forest_gump]
puts "\n"
# OR
movies.each_value{|v| puts v}
puts "\n"
# OR
movies.each{|k,v| puts "#{v}"}

# 4 - Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
dates = []
movies.each_value {|v| dates << v}

# Why are outputs different?????
puts "\n"
puts "#{dates}"
puts dates

# 5 - Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
i = 5
sum = 1
while i > 0
	sum = sum * i
	i-=1
end
puts sum

i = 6
sum = 1
while i > 0
	sum = sum * i
	i-=1
end
puts sum

i = 7
sum = 1
while i > 0
	sum = sum * i
	i-=1
end
puts sum

i = 8
sum = 1
while i > 0
	sum = sum * i
	i-=1
end
puts sum

# 6 - Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
a = 5.341
puts a ** 2
b = 9.092
puts b ** 2
c = 12.51
puts c ** 2

# 7 - What does the following error message tell you?
=begin
SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
=end

=begin
There is an open "}" bracket in the code
=end