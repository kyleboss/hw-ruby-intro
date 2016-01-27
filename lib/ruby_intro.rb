# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  current_total = 0
  arr.each do |current_int|
    current_total += current_int
  end
  current_total
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr.first if arr.length == 1
  arr.sort!
  arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  return false if arr.length == 1
  num_iterations = (arr.length/2).ceil
  arr[0..num_iterations].each do |curr_outer_int|
    arr.each do |curr_inner_int|
      return true if (curr_inner_int + curr_outer_int == n)
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^(?=\w)([^?=aeiou])/i
end

def binary_multiple_of_4? s
  return false unless s =~ /^[01]+$/
  dec_s = s.to_i(10)
  return dec_s % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :price, :isbn
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$" + '%.2f' % price
  end
end
