# 1 - Given a hash of family members, with keys as the title and an 
# array of names as the values, use Ruby's built-in select method 
# to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate = family.select { |k, v| k == :brothers || k == :sisters }.values.flatten
puts immediate

# ---------------------------------------------------------------

# 2 - Look at Ruby's merge method. Notice that it has two versions. 
# What is the difference between merge and merge!? Write a program 
# that uses both and illustrate the differences.

# merge: merges two hashes into one hash
# merge1: merges two hashes into one hash permanently

h1 = {
	name: "Angela",
	age: 23,
	city: "Los Angeles"
}
h2 = {
	school: "UCSD",
	life: "none",
	pets: "Lego"
}

h1.merge(h2)
puts h1 # ==> nil
h1.merge!(h2)
puts h1 # {:name=>"Angela", :age=>23, :city=>"Los Angeles", 
        # :school=>"UCSD", :life=>"none", :pets=>"Lego"}

# ---------------------------------------------------------------

# 3 - Using some of Ruby's built-in Hash methods, write a program 
# that loops through a hash and prints all of the keys. Then write 
# a program that does the same thing except printing the values. 
# Finally, write a program that prints both.

h1 = {
	name: "Angela",
	age: 23,
	city: "Los Angeles"
}

h1.each { |k, v| puts "Key: #{k}" }
h1.each { |k, v| puts "Values: #{v}" }
h1.each { |k, v| puts "Keys: #{k} and Values: #{v}" }

# ---------------------------------------------------------------

# 4 - Given the following expression, how would you access the name 
# of the person?

person = {
	name: 'Bob', 
	occupation: 'web developer', 
	hobbies: 'painting'
}

puts person[:name]

# ---------------------------------------------------------------

# 5 - What method could you use to find out if a Hash contains a 
# specific value in it? Write a program that verifies that the 
# value is within the hash.

person = {
	name: 'Bob', 
	occupation: 'web developer', 
	hobbies: 'painting'
}

puts person.value?("Bob") # ==> true

# ---------------------------------------------------------------

# 6 - What's the difference between the two hashes that were created?

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# first uses symbol as key
# second uses string a key

# ---------------------------------------------------------------

# 7 - If you see this error, what do you suspect is the most 
# likely problem?

# A. We're missing keys in an array variable.
# B. There is no method called keys for Array objects.
# C. keys is an Array object, but it hasn't been defined yet.
# D. There's an array of strings, and we're trying to get the 
#    string keys out of the array, but it doesn't exist.

# NoMethodError: undefined method `keys' for Array

# ==> B
