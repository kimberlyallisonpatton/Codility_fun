# Checking solution for performance.
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