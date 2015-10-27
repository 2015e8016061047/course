# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  sums=0
  for i in 0...arr.size
    sums+=arr[i]
  end
  return sums
end


def max_2_sum arr
  # YOUR CODE HERE
  sum=0;
  num=arr.size
  case num
    when 0
    when 1
      sum+=arr[0]
    else
      arr2=arr.sort
      sum=sum+arr2[-2]+arr2[-1]
  end
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  flag=false
  num=arr.size
  case num
    when 0..1
      return false
    else
      arr1=arr.sort
      i=0
      while  !flag and i<num
        if arr1.index(n-arr1[i])!=nil and arr1.index(n-arr1[i])!=i
          flag=true
          break
        else
          i+=1
        end
      end
      return flag
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello,#{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if ((s[0]>'a' and s[0]<'z') or((s[0]>'A' and s[0]<'Z')))
    if s[0]=='a' or s[0]=='A'\
    or s[0]=='e' or s[0]=='E'\
    or s[0]=='i' or s[0]=='I'\
    or s[0]=='o' or s[0]=='O'\
    or s[0]=='u' or s[0]=='U'
      return false
    else
      return true
    end
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  flag=true
  for i in 0...s.size
    if not(s[i]=='0' or s[i]=='1' or s[i]=='.')
      flag=false
      break
    end
  end

  if t%4!=0
    flag=false
  end
  return flag
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    @isbn=isbn
    @price=price
  end
  def price_as_string
    "$"+format("%.2f",@price).to_s
  end
  attr_accessor:isbn
  attr_accessor:price
end

