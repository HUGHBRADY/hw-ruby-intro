# When done, submit this entire file to the autograder.

# Part 1

# Define a method that takes an array of integers as an argument and returns the sum of its elements.
def sum arr
  x = 0
  
  if arr.empty?
    return 0
  else
    arr.each { |num| 
      x += num 
    }
    return x
  end 

end

# Define a method which takes an array of integers as an argument and returns the sum of its two largest elements.
def max_2_sum arr
  
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr = arr.sort! {|a, b| b <=> a }

    return arr[0] + arr[1]
  end 

end

# Define a method that takes an array of integers and an integer, n, as arguments and returns true if any two elements in the array of integers sum to n.
def sum_to_n? arr, n

  if  arr.permutation(2).any? { |a, b| a + b == n }
    return true
  else
    return false
  end
  
end

# Part 2

# Define a method that takes a string representing a name and returns the string "Hello, " concatenated with the name. 
def hello(name)

  return "Hello, #{name}"

end

# Define a method that takes a string and returns true if it starts with a consonant and false otherwise. 
def starts_with_consonant? s
  
  if s.empty?
    return false
  end 
  
  s = s.downcase
  
  if s[0] == "a" or s[0] == "e" or s[0] == "i" or s[0] == "o" or  s[0] == "u" 
    return false
  elsif s[0, 1] =~ /[[:alpha:]]/
    return true
  end
  
end

# Define a method that takes a string and returns true if the string represents a binary number that is a multiple of 4. 
def binary_multiple_of_4? s

  # Flip the string. Have a var named factor that defines the value of digits in each position i.e. 1, 2, 4, 8. Calculate that out, modulus 4 = 0 == true
  if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
		return true
	else
		return false
  end
  
end
  

# Part 3

# Define a class which represents a book with an ISBN number, and price of the book as a floating-point number, price, as attributes.
class BookInStock
  
  attr_accessor :isbn, :price

  def initialize (isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f" % @price
  end

end
