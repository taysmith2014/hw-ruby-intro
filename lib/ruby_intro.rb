# When done, submit this entire file to the autograder.

# Part 1 -----------------------------------------------------------------------

# returns the sum of all elements, 0 if empty
def sum arr
  arr.inject(0, :+)
end

# returns sum of two largest elements, 0 if empty, element if length of 1
def max_2_sum arr
  arr = arr.max(2).sum 
end

# returns true if any two elements in the array sum to n, false otherwise
def sum_to_n? arr, n
  arr = arr.combination(2).to_a
  arr.any? {|a| a.sum == n} ? true : false
end

# Part 2 -----------------------------------------------------------------------

# returns "Hello, " concatenated with the input name
def hello(name)
  "Hello, " + name
end

# returns true if input string begins with a consonant
def starts_with_consonant? s
  return false if s == ''
  return false if !s[0].match(/^[[:alpha:]]$/)
  s[0] =~ /[AaEeIiOoUu]/ ? false : true
end

# returns true if input string represents a binary number that is a multiple of 4
def binary_multiple_of_4? s
  return false if s =~ /[^0-1]/
  return false if s == ''
  s.to_i(2) % 4 == 0 ? true : false
end

# Part 3 -----------------------------------------------------------------------

class BookInStock
  # getters 
  def isbn
    @isbn
  end
  def price
    @price
  end
  
  # setters
  def isbn=(i)
    @isbn = i
  end
  def price=(p)
    @price = p
  end
  
  # constructor arguments: ISBN as string, price as float
  # raise ArgumentError if ISBN is not a string or if empty string 
  # raise ArgumentError if price is not a number or if <= 0
  def initialize(i, p)
    if !i.is_a? String
      raise ArgumentError.new("ISBN must be a string") 
    elsif i == ''
      raise ArgumentError.new("ISBN string cannot be empty")
    else
      @isbn = i
    end
    
    if !p.is_a? Numeric
      raise ArgumentError.new("Price must be a number")
    elsif p <= 0
      raise ArgumentError.new("Price must be >= 0")
    else
      @price = p
    end
  end
  
  # returns price of the book with a leading $ and two decimal places
  def price_as_string 
    "$" + ('%.2f' % @price).to_s
  end 
end

