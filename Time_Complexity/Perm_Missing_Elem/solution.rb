# Work in progress
def solution(a)
  p a.sort!
  p a.inject{|x, y| return x if y - x == 2}
end