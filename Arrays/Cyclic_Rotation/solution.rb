# I feel so dumb! I just needed to read the docs more thoroughly.
def solution(a, k)
  a.rotate!(-k)
end

# 87% accuracy
def solution(a, k)
	k.times do
		popped_array = []
		popped_array << a.pop
		a = popped_array.concat(a) 
	end
	return a
end

# 25% so bad, only works for bare minimum
def solution(a, k)
  a.rotate!(k - 1)
end