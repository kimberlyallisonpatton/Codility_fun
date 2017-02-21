def solution(a)
  sorted = a.sort!
  i = 0
  while i < sorted.length  
    if sorted == [] || sorted[0] == 2 
      return 1
    elsif sorted[i] + 1 == sorted[i+1]
      i += 1
    else
      return sorted[i] + 1
    end
  end
end

# 90% Solve for missing first or last elements
def solution(a)
  sorted = a.sort!
  i = 0
  while i < sorted.length  
    if sorted[i] + 1 == sorted[i+1]
      i += 1  
    else
      return sorted[i] + 1
    end
  end
end

#Handles the first number missing edge case
def solution(a)
  p sorted = a.sort!
  i = 0
  while i < sorted.length  
    if sorted[0] == 2  
      return 1
    elsif sorted[i] + 1 == sorted[i+1]
      i += 1
    else
      return sorted[i] + 1
    end
  end
end



def solution(a)
  a.sort.each_cons(2).all? {|x, y| y == x + 1}
end

# Need to solve for missing first or last elements.
def solution(a)
  p a.sort!
  # p a.detect{|x| x == 3}
  # p a.map{|x, y| x if x + y.even?}
  i = 0
  until i == a.length
    if (a[i] + a[i+1]).even?
      return a[i]+1
      break
    else 
      i += 1 
    end
  end
end

def solution(a)
  a.sort!
  i += 0
  until i == a.length
	  if a[i].next - a[1] == 2
	  	return a[i] + 1
	  	break
	  else
	  	i += 1
	  end
	end
end

# {Number of pairs * Sum of each pair} = 
# (\frac{n}{2})(n+1) = \frac{n(n+1)}{2}}

# {\text{Number of pairs * Sum of each pair} = 
# (\frac{n + 1}{2})(n) = \frac{n(n+1)}{2}}
# Techniques for adding the numbers 1 to 100

# possible start of solution
# def solution(a)
#   p res = a.reduce(:+)
#   p len = a.length
#   p arr = []
#     p a.each do |f|
#     if len > 1
#       res = res - (f*2)
#       p arr << res.abs
#     end
#   end
#   return arr.min
# end

def solution(a)
  sumAll = 0
  sumLess = 0
  for i in 0..a.length + 1
    sumLess += (a[i] || 0)
    sumAll += i
  end
  sumAll - sumLess
ends