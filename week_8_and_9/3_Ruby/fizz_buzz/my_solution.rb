# U3.W8-9: 


# I worked on this challenge [by myself].

# 2. Pseudocode

# define a method named super_fizzbuzz
# pass an argument to the method above
# If the array value is a multiple of 3, return "Fizz"
# If the array value is a multiple of 5, return "Buzz"
# If the array value is a multiple of 3 and 5, return "FizzBuzz"
# else return the original array

# 3. Initial Solution

def super_fizzbuzz(array)
  # Your code goes here!
  new_array = []
  array.each do |i|
    if i % 3 == 0
      if i % 5 == 0
        new_array << "FizzBuzz"
      else
        new_array << "Fizz"
      end
    elsif i % 5 == 0
      new_array << "Buzz"
    else
      new_array << i
    end
  end
  new_array
end


# 4. Refactored Solution

def super_fizzbuzz(array)
  array.map do |i|
    if i % 3 == 0
      i % 5 == 0 ? "FizzBuzz": "Fizz"
    elsif i % 5 == 0
      "Buzz"
    else
      i
    end
  end
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p super_fizzbuzz([1,2,3])  # => [1, 2, "Fizz"]
p super_fizzbuzz([1,2,5])  # => [1, 2, "Buzz"]
p super_fizzbuzz([1,2,15]) # => [1, 2, "FizzBuzz"]
p super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]

# 5. Reflection 

# I had previously worked on this exercise at socrates.devbootcamp.com but I was able to refactor
# the solution, further.
