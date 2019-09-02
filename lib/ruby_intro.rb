# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for val in arr
    sum += val
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  
  max1 = arr[0] > arr[1] ? arr[0] : arr[1]
  max2 = arr[0] < arr[1] ? arr[0] : arr[1]
  
  for i in 1..arr.length
    if arr[i] > max1
      max2 = max1
      max1 = arr[i]
    elsif arr[i] > max2
      max2 = arr[i]
    end
  end
  
  return max1 + max2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  counters = Hash.new
  for val in arr
    counter = counters[val]
    if counter == nil
      counters[n-val] = val
    else 
      return true
    end
  end
  
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0 || /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if ( (s.length == 1 && s[0] == '0') || ((s !~ /[^01]/) && (s.length > 2 && s[s.length-1] != '1' && s[s.length-2] != '1')) )
    return true
  end
  return false
end

# Part 3  

class BookInStock
# YOUR CODE HERE
  def initialize(_isbn, _price)  
    # Instance variables
    self.setIsbn(_isbn)  
    self.setPrice(_price)
  end  
  
  def getIsbn  
    return self.isbn  
  end  
  
  def setIsbn(_isbn) 
    self.isbn = _isbn  
  end
  
  def getPrice  
    return self.price  
  end
  
  def setPrice(_price)  
    self.price = _price
  end 
end
