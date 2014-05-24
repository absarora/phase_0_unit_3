# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself].

# 2. Pseudocode

# create a class named Rectangle
# define a constructor that takes two arguments
# define a method named area (returns the area of a rectangle)
# define a method named perimeter (returns the perimeter of a rectangle)
# define a method named diagonal (returns the length of a diagonal of a rectangle)
# define a method named square? (checks to see if a rectangle is a square)

# 3. Initial Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
    @width * @height
  end

  def perimeter
    2 * @width + 2 * @height
  end

  def diagonal
    # sqrt(width^2 + height^2)
    (@width ** 2 + @height ** 2)**(0.5)
  end

  def square?
    @width == @height
  end
end


# 4. Refactored Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
    width * height
  end

  def perimeter
    2 * (width + height)
  end

  def diagonal
    (width ** 2 + height ** 2) ** 0.5
  end

  def square?
    width == height
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

isRectangle = Rectangle.new(10,20)
p isRectangle

isSquare = Rectangle.new(20,20)
p isSquare


# 5. Reflection 

# Yet, another easy Ruby exercise.
