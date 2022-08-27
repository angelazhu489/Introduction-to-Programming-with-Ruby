def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value # ==> 7

# -----------------------------------------------------------

def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value # ==> 7

# -----------------------------------------------------------

def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value # ==> 7

# -----------------------------------------------------------

def add_three(n)
  puts n + 3
end

# add_three(5).times { puts "will this work?" } # no

# -----------------------------------------------------------

def add_three(n)
  puts n + 3 # ==> 8
end

return add_three(5) # ==> nil