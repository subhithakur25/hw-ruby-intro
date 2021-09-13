# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  else
    sum = 0
    for i in arr
      sum += i
    end
    return sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
return arr.sort()[-1] + arr.sort()[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
if arr.length <= 1
  return false
end
for a in 0..arr.length-1 do
  for b in a+1..arr.length-1 do
    if arr[a] + arr[b] == n
      return true
    end
  end
end
return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  start = s.to_s[0].upcase
  if start == "A" || start == "E" || start == "I" || start == "O" || start == "U"
    return false
  end
  if start.match?(/[[:alpha:]]/)
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  for i in 0..s.length-1 do
    if s[i]!= '0' && s[i]!= '1'
     return false
    end
  end
  d=0
  a=1
  len = s.length-1
  while len >= 0 do
    d=d+(s[len].to_i)*a
    a=a*2
    len -= 1
  end
  if d%4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
 attr_accessor :isbn
	attr_accessor :price
	
	def initialize(isbn,price)
		@isbn = isbn
		@price = price
		if @price <= 0 or @isbn.empty? 
			raise ArgumentError
		end
	end

	def price_as_string
		return "$#{'%.2f' %  @price}"
	end
end
