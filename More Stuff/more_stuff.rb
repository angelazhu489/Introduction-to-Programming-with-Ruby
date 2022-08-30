def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a) # ==> ["I like the letter: a", "I like the letter: b", "I like the letter: c"]
a # ==> ["a", "b", "c"]