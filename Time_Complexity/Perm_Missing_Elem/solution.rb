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
  a.next
end

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