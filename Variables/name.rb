# 1 - Write a program called name.rb that asks the user to type in their 
# name and then prints out a greeting message with their name included.

puts "What is your first name?"
fname = gets.chomp
puts "Hello, #{fname}"

# 2 - Modify name.rb again so that it first asks the user for their 
# first name, saves it into a variable, and then does the same for the 
# last name. Then outputs their full name all at once.

puts "What is your last name?"
lname = gets.chomp
puts "Hello, #{fname} #{lname}"

# 5 - What does x print to the screen in each case? Do they both 
# give errors? Are the errors different? Why?

# x = 0
# 3.times do
#   x += 1
# end
# puts x
# ==> 3

# y = 0
# 3.times do
#   y += 1
#   x = y
# end
# puts x
# ==> error. x defined not within scope

