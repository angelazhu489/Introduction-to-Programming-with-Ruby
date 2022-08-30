# 1 - Use the each method of Array to iterate over 
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

Array(1..10).each { |i| puts i }

# -------------------------------------------------------------------

# 2 - Same as above, but only print out values greater than 5.
Array(1..10).each do |i| 
	if i > 5
		puts i
	end
end

# -------------------------------------------------------------------

# 3 - Now, using the same array from #2, use the select method to 
# extract all odd numbers into a new array.

odds = Array(1..10).select { |i| i % 2 == 1 }
print odds

# -------------------------------------------------------------------

# 4 - Append 11 to the end of the original array. Prepend 0 to the 
# beginning.

arr = Array(1..10)
arr.push(11)
arr.unshift(0)
print arr

# -------------------------------------------------------------------

# 5 - Get rid of 11. And append a 3.
arr.pop
arr << 3

print arr

# -------------------------------------------------------------------

# 6 - Get rid of duplicates without specifically removing any one value.
arr.uniq!
puts arr

# -------------------------------------------------------------------

# 7 - What's the major difference between an Array and a Hash?

# Array: indexed
# Hash: has key value pairs

# -------------------------------------------------------------------

# 8 - Create a Hash, with one key-value pair, using both Ruby syntax 
# styles.

hash = {
	name: "Angela"
}

hash_1 = {
	:name => "Angela"
}

# -------------------------------------------------------------------

# 9 - Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
# 2. Add to this hash the key:value pair `{e:5}`
# 3. Remove all key:value pairs whose value is less than 3.5

h = { a:1, b:2, c:3, d:4 }

# 1
puts h[:b]
# 2
h[:e] = 5
puts h
# 3
h.each { |k, v| h.delete(k) if v < 3.5}
puts h

# -------------------------------------------------------------------

# 10 - Can hash values be arrays? Can you have an array of hashes? 
# (give examples)

# Yes, hash values can be arrays
# Eg: h = { 1: [1, 2, 3], 2: [2, 4, 6]}

# Yes, you can have an array of hashes
# Eg: a = [ { 1: a, 2: b}, {3: c, 4: d} ]

# -------------------------------------------------------------------

# 11 - Given the following data structures, write a program that 
# copies the information from the array into the empty hash that 
# applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contact_data.each do |sub_array|
	if sub_array[0].include?("joe")
		contacts["Joe Smith"][:email] = sub_array[0]
		contacts["Joe Smith"][:address] = sub_array[1]
		contacts["Joe Smith"][:phone] = sub_array[2]
	else
		contacts["Sally Johnson"][:email] = sub_array[0]
		contacts["Sally Johnson"][:address] = sub_array[1]
		contacts["Sally Johnson"][:phone] = sub_array[2]
	end
end

puts contacts

# -------------------------------------------------------------------

# 12 - Using the hash you created from the previous exercise, 
# demonstrate how you would access Joe's email and Sally's 
# phone number.

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

# -------------------------------------------------------------------

# 13 - Use Ruby's Array method delete_if and String method 
# start_with? to delete all of the strings that begin with an "s" in 
# the following array.
# Then recreate the arr and get rid of all of the strings that start 
# with "s" or starts with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |i| i.start_with?("s") } 
puts arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |i| i.start_with?("s") || i.start_with?("w") } 
puts arr

# -------------------------------------------------------------------

# 14 - Take the following array:
# and turn it into a new array that consists of strings containing 
# one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. 
# Look into using Array's map and flatten methods, as well as 
# String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a = a.map { |i| i.split(" ") }
print a.flatten

# -------------------------------------------------------------------

# 15 - What will the following program output?

hash1 = {
	shoes: "nike", 
	"hat" => "adidas", 
	:hoodie => true
}
hash2 = {
	"hat" => "adidas", 
	:shoes => "nike", 
	hoodie: true
}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# Prints ==> "These hashes are the same!"

# -------------------------------------------------------------------

# 16 - Challenge: In exercise 11, we manually set the contacts hash 
# values one by one. Now, programmatically loop or iterate over the 
# contacts hash from exercise 11, and populate the associated data 
# from the contact_data array. Hint: you will probably need to 
# iterate over ([:email, :address, :phone]), and some helpful methods 
# might be the Array shift and first methods.
# Note that this exercise is only concerned with dealing with 1 entry 
# in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end