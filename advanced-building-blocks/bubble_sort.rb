def bubble_sort(ary)
	run = 0
	while run < (ary.length - 1) 
		sorted = true
		for x in 0...ary.length - run
			if x+1 < ary.length && ary[x] > ary[x+1]
				ary[x],ary[x+1] = ary[x+1],ary[x]
				sorted = false
			end
		end
		run += 1
		break if sorted
	end
	ary
end

def bubble_sort_by(ary)
	run = 0
	while run < (ary.length - 1)
		sorted = true
		for x in 0...ary.length - run
			if x+1 < ary.length && (yield ary[x], ary[x+1]) > 0
				ary[x],ary[x+1] = ary[x+1],ary[x]
				sorted = false
			end
		end
		run += 1
		break if sorted
	end
	ary
end



test_array = [4,3,78,2,0,2]
p bubble_sort(test_array)

p bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length }