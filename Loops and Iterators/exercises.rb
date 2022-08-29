# 1 - What does the each method in the following program return after 
# it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# ==> [1, 2, 3, 4, 5]

# 2 - Write a while loop that takes input from the user, performs 
# an action, and only stops when the user types "STOP". Each loop 
# can get info from the user.

input = ""
while input != "STOP"
	print "Give string: "
	input = gets.chomp
	puts "You put #{input}"
end

# 3 - Write a method that counts down to zero using recursion.

def rec(num)
	if num <= 0
		puts num
	else
		puts num
		rec(num-1)
	end
end

rec(5)
rec(0)
rec(-5)