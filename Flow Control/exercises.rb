# 1 - Write down whether the following expressions return true or 
# false. Then type the expressions into irb to see the results.

(32 * 4) >= 129
# ==> false

false != !true
# ==> false

true == 4
# ==> false

false == (847 == '874')
# ==> true

(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
# ==> true

# 2 - Write a method that takes a string as an argument. The method 
# should return a new, all-caps version of the string, only if the 
# string is longer than 10 characters. Example: change "hello world" 
# to "HELLO WORLD". (Hint: Ruby's String class has a few methods that 
# would be helpful. Check the Ruby Docs!)

print "Give string: "
line = gets.chomp

if line.length > 10
	puts line.upcase 
else 
	puts line
end

# 3 - Write a program that takes a number from the user between 0 and 
# 100 and reports back whether the number is between 0 and 50, 51 and 
# 100, or above 100.

print "Give number: "
num = gets.chomp.to_i

if num >= 0 && num <= 50
	puts "Number is between 0 and 50"
elsif num >= 51 && num <= 100
	puts "Number is between 51 and 100"
elsif num < 0
	puts "Number is less than 0"
else
	puts "Number is over 100"
end

# 4 - What will each block of code below print to the screen? Write 
# your answer on a piece of paper or in a text editor and then run 
# each block of code to see if you were correct.

# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")
# ==> "FALSE"

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
# ==> "Did you get it right?"

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
# ==> "Alright now!"

# 5 - When you run the following code...
=begin
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)
=end
# You get the following error message..
# exercise.rb:8: syntax error, unexpected end-of-input, 
# expecting keyword_end
# Why do you get this error and how can you fix it?


# Missing 'end' of method definition

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
	end
end

equal_to_four(5)

# 6 - Write down whether the following expressions return true or 
# false or raise an error. Then, type the expressions into irb to 
# see the results.

(32 * 4) >= "129"
# ==> error ; comparison of diff types

847 == '874'
# ==> false

'847' < '846'
# ==> false

'847' > '846'
# ==> true

'847' > '8478'
# ==> false

'847' < '8478'
# ==> true
