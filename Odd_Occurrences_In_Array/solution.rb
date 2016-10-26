def solution(a)
	array_to_string = a.join
	i = 0 
	until i == a.length 
		x = a[i].to_s
		if array_to_string.scan(Regexp.escape(x)).count.odd?
			answer = x.to_i
			break
		end
		i += 1 
	end
	return answer
end
