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

array = [1,3,2,5,5,2,1]
uniq_array = array.uniq!
p array - uniq_array
[1, 3, 2, 5, 5, 2, 1] - [1, 2, 3]

# array.include?(array[i])
# array.select{}

# array.sort!{|x, y| }

injected_array = array.inject(Hash.new(0)) { |h, e| h[e] += 1 ; h }
p injected_array
p injected_array[3]
# if injected_array[i].value == 1
#   return injected_array[i]