# 2 - Write a program called age.rb that asks a user how old they are and 
# then tells them how old they will be in 10, 20, 30 and 40 years. 
# Below is the output for someone 20 years old.

puts "How old are you?"
age = gets.chomp.to_i
i = 10
4.times do 
	age = age + 10
	puts "In #{i} years you will be: #{age}"
	i+=10
end

# 3 - Add another section onto name.rb that prints the name of the user 
# 10 times. You must do this without explicitly writing the puts 
# method 10 times in a row. Hint: you can use the times method to do 
# something repeatedly.

puts "What is your name?"
name = gets.chomp
10.times {puts name}