def solution(n)
	#convert to binary
  bin_num = n.to_s(2)
  #check to make sure there is at least one binary gap
  unless bin_num.scan(/(0+1)/) == []
  	#scan for all binary gaps and sort in order of length
		bin_array = bin_num.scan(/(0+1)/).sort!
		#remove ending 1 from binary gap
  	bin_array[0][0].length - 1
  else
  	#return 0 if no binary gaps exist
  	return 0
  end
end