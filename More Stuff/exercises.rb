# 1 - Write a program that checks if the sequence of characters 
# "lab" exists in the following strings. If it does exist, print 
# out the word.

def lab_check(string)
	if string =~ /lab/
		puts string
	else
		puts "No Match"
	end
end

lab_check("laboratory")
lab_check("experiment")
lab_check("Pans Labyrinth")
lab_check("elaborate")
lab_check("polar bear")

# -------------------------------------------------------------------

# 2 - What will the following program print to the screen? 
# What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" } # Block

# Nothing is printed to the screen because the block is never 
# activated with the .call method. 
# The method returns a Proc object.

# irb(main):005:0> execute { puts "Hello from inside the execute method!" }
# => #<Proc:0x0000000102163ae8@(irb):5>

# -------------------------------------------------------------------

# 3 - What is exception handling and what problem does it solve?

# Exception handling is a structure used to handle the possibility 
# of an error occurring in a program. It is a way of handling the 
# error by changing the flow of control without exiting the program 
# entirely.

# -------------------------------------------------------------------

# 4 - Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" } 

# -------------------------------------------------------------------

# 5 - Why does the following code...
# Give us the following error when we run it?


def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

=begin

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'

=end

# need '&'