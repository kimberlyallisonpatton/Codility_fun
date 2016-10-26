def solution(a, k)
	k.times do
		popped_array = []
		popped_array << a.pop
		a = popped_array.concat(a) 
	end
	return a
end