# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  total = 0
  for i in arr do
    total += i
  end
  return total
end

def max_2_sum(arr)
  # YOUR CODE HERE
  result = 0
  len = arr.length()
  if len == 0
    result = 0
  elsif len == 1
    result = arr[0]
  else
    largest = -(2**(0.size * 8 -2))
    secLargest = -(2**(0.size * 8 -2))
    for i in arr 
      if i >= secLargest 
        secLargest = i
      end
      if secLargest >= largest
        temp = largest

        largest = secLargest
        secLargest = temp
      end
    end
    result = secLargest + largest
  end
  return result
end

def sum_to_n?(arr, number)
  
  len = arr.length()
  if len == 0
    return false
  elsif len == 1
    return false
  else
    # loop to the last two element
    for i in 0..len-1
      curr = arr[i]
      nextArr = arr[i+1, len - i - 1]
      #loop anything behind it
      for j in nextArr
        # find the two pair 
        if curr + j == number 
          return true
        end
      end 
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(string)

  temp = string.upcase
  if temp[0] =~ /[A-Z]/
    consonant = ["A", "E", "I", "O", "U"]
    consonant.each do |c| 
      if temp[0] == c 
        return false
      end
    end
    return true
  else 
    return false
  end 
end

def binary_multiple_of_4?(string)
  sum = 0 
  if string.length == 0
    return false
  end 
  for i in 0..string.length-1
    if string[i] == "1" 
      sum = sum + 2**(string.length - i - 1)
    elsif string[i] == "0" 
      sum = sum 
    else
      return false
    end 
  end 
  #puts string + " is " + sum.to_s + "\n"
  if sum % 4 != 0 
    return false
  else 
    return true
  end 
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize isbn, price    
    raise ArgumentError if isbn == "" || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string 
    return "$" + format("%.2f", @price)
  end
end
