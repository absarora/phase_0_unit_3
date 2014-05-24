# U3.W8-9: Triangle Debugger


# I worked on this challenge [by myself].


# 1. Original Solution

def valid_triangle?(a, b, c, sum)
  if a != 0 || b != 0 || c != 0
  if a >= b
  largest = a
  sum += b
  else largest = b
  sum += a
  end
  if c > largest
  sum += largest
  largest = c
  else sum += c
  end
  if sum > largest
  return "true"
  else return "false"
  end
  else return "false"
  end
end


# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
=begin
valid_triangle? expects 3 arguments
     Failure/Error: method(:valid_triangle?).arity.should eq 3
       
       expected: 3
            got: 4
       
       (compared using ==)

=end
# * what is the exact line number the error is appearing? 
# Line #9
# * before you fix the bug, what do you think is causing the error?
# method expects 3 arguments but is getting 4

# --- Bug 2 ---
# * what is the exact description of the error?
=begin
valid_triangle? returns false if any of the arguments are 0
     Failure/Error: [0, length, length].permutation(3).all? { |(a,b,c)| valid_triangle?(a,b,c) }.should be_false
       expected: false value
            got: true
=end
# * what is the exact line number the error is appearing?
# Line #23
# * before you fix the bug, what do you think is causing the error?
# returns a string instead of a boolean value

# --- Bug 3 ---
# * what is the exact description of the error?
=begin
valid_triangle? returns false for any impossible triangle
     Failure/Error: invalid_triangles.all? do |triple|
       expected: true value
            got: false
=end
# * what is the exact line number the error is appearing?
# Line #24
# * before you fix the bug, what do you think is causing the error?
# returns a string instead of a boolean value

# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
  (a < (b+c)) && (b < (c+a)) && (c < (a+b))
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

valid_triangle?(0,0,0) # => false, because a triangle can't have 0-length sides

valid_triangle?(1,1,1) # => true, an equilateral triangle

valid_triangle?(3,4,5) # => true, a right triangle
valid_triangle?(4,3,5) # => true, the same right triangle
valid_triangle?(5,3,4) # => true, the same right triangle

valid_triangle?(10, 10, 100) #=> false, no such triangle exists


# 5. Reflection 
