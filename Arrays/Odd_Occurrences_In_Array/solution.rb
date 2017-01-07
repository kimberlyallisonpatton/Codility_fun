# Best solution so far, 80% Correctness, 100% Performance, and 88% overall.
def solution(a)
  grouped_array = a.group_by{|x| x}.values
  answer = grouped_array.select!{|x| x.length.odd?}
  answer.first[0]
end

# Trying to fix problem with arrays that have only one number. 


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

# Better solution, but still lacking in performance. Correctness is 80% and Performance 50% for a combined score of 66%.
def solution(a)		
	injected_array = a.inject(Hash.new(0)) { |h, e| h[e] += 1 ; h }
	answer_array = injected_array.drop_while {|key, value| key if value != 1}
	answer_array[0][0]
end

# Same results as previous solution.
def solution(a)		
	injected_array = a.inject(Hash.new(0)) { |h, e| h[e] += 1 ; h }
	answer_array = injected_array.map {|key, value| key if value == 1}
	answer_array.compact!
	return answer_array[0]
end

def solution(a)
  grouped_array = a.group_by{|x| x}.values
  answer = grouped_array.map{|x| return x[0] if x.length == 1}
end

def solution(a)
  grouped_array = a.group_by{|x| x}.values
  answer = grouped_array.min{|x, y| x.length <=> y.length}
  return answer[0]
end
