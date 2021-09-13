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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
