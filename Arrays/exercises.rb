# 1 - Below we have given you an array and a number. Write a program 
# that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(number) # ==> true

# -------------------------------------------------------------

# 2 - What will the following programs return? What is the value of 
# arr after each?

# 1
arr = ["b", "a"]
# Array(1..3) => [1, 2, 3]
arr = arr.product(Array(1..3)) # ==> [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
arr.first.delete(arr.first.last) # ==> [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# ==> 1

=begin

irb(main):001:0> arr = ["b", "a"]
=> ["b", "a"]
irb(main):002:0> arr = arr.product(Array(1..3))
=> [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
irb(main):003:0> arr.first.delete(arr.first.last)
=> 1

=end

# 2
arr = ["b", "a"]
# [Array(1..3)] => [[1, 2, 3]]
arr = arr.product([Array(1..3)]) # ==> [ [["b", [1, 2, 3]] , ["a", [1, 2, 3]] ]
arr.first.delete(arr.first.last) # ==> [["b"], ["a", [1, 2, 3]]]

# ==> [1, 2, 3]

=begin

irb(main):001:0> arr = ["b", "a"]
=> ["b", "a"]
irb(main):002:0> arr = arr.product([Array(1..3)])
=> [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
irb(main):003:0> arr.first.delete(arr.first.last)
=> [1, 2, 3]

=end

# -------------------------------------------------------------

# 3 - How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]

puts arr[1][0]
# OR 
# arr.last.first

# -------------------------------------------------------------

# 4 - What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 1
arr.index(5)
# ==> 3

# 2
# arr.index[5]
# ==> error

# 3
arr[5]
# ==> 8

# -------------------------------------------------------------

# 5 - What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6]        # ==> e
b = string[11]       # ==> A
c = string[19]       # ==> nil

# -------------------------------------------------------------

# 6 - You run the following code...
# ...and get the following error message:
# What is the problem and how can it be fixed?

names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

=begin
TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
=end

# ==> You are attempting to set the value of an item in an array 
# using a string as the key. Arrays are indexed with integers, not 
# strings. You would modify the array by doing the following:
# names[3] = 'jody'

# -------------------------------------------------------------

# 7 - Use the each_with_index method to iterate through an array of 
# your creation that prints each index and value of the array.

arr = ["angela", "megan", "cindy"]
arr.each_with_index { |i, v| puts "Index is: #{i}, Value is: #{v}"}

# -------------------------------------------------------------

# 8 - Write a program that iterates over an array and builds a new 
# array that is the result of incrementing each value in the original 
# array by a value of 2. You should have two arrays at the end of 
# this program, The original array and the new array you've created. 
# Print both arrays to the screen using the p method instead of puts.

arr = [3, 2, 8, 4, 5]
new_arr = []

arr.each do |i|
	new_arr = new_arr.push(i + 2)
end

p arr
p new_arr