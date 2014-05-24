# U3.W8-9: Reverse Words


# I worked on this challenge [by myself].

# 2. Pseudocode

# define a method named reverse_words that takes a string as an argument
# convert the string to an array and split each word using a whitespace
# reverse each word
# convert an array to a string (space every word)


# 3. Initial Solution

def reverse_words(str)
  str.split(" ").map{ |i| i.reverse }.join(" ")
end

# 4. Refactored Solution

def reverse_words(str)
  str.split(" ").map(&:reverse).join(" ")
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p reverse_words("Devbootcamp should invest in a coding house")

# 5. Reflection

# This was a fairly easy exercise to work on.
