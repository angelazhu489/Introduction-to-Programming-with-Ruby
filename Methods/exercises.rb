# 1 - Write a program that prints a greeting message. This program 
# should contain a method called greeting that takes a name as its 
# parameter and returns a string.

puts "What is your name?: "
input = gets.chomp
def greeting(name)
	puts "Hello, #{name}!"
end
greeting(input)

# OR

# puts "What is your name?: "
# input = gets.chomp
# def greeting(name)
# 	"Hello, #{name}!"
# end
# puts greeting(input)

# 2 - What do the following expressions evaluate to?

=begin

1. x = 2
==> 2; variable assignment returns value that is assigned

2. puts x = 2
==> nil; output return value of puts method; puts method always return nil

3. p name = "Joe"
==> "Joe"; p method outputs argument and returns argument

4. four = "four"
==> "four"; variable assignment; 

5. print something = "nothing"
==> nil; print outputs retunr value of assigment and return nil

=end

# 3 - Write a program that includes a method called multiply that 
# takes two arguments and returns the product of the two numbers.

def multiply(num1, num2)
	num1 * num2
end
puts multiply(3, 5)

# 4 - What will the following code print to the screen?

def scream(words)
	words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# ==> nothing prints nothing returns

# 5 Edit the method definition in exercise #4 so that it does print 
# words on the screen. What does it return now?

def scream(words)
	words = words + "!!!!"
  puts words
end

scream("Yippeee")

# ==> nil; puts returns nill always

# 6 - What does the following error message tell you?

=begin
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
=end

# only gave 1 argument when method takes 2