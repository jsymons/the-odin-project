module Enumerable
	def my_each
		return self unless block_given?
		for i in self
			yield i
		end
	end

	def my_each_with_index
		return enum_for(:my_each_with_index) unless block_given?
		index = 0
		for i in self
			yield i, index
			index += 1
		end
	end

	def my_select
		return enum_for(:my_select) unless block_given?
		ary = []
		for i in self
			ary << i if yield i
		end
		ary
	end

	def my_all?
		all_valid = true
		for i in self
			all_valid = yield i unless !all_valid
		end
		all_valid
	end

	def my_any?
		any_valid = false
		for i in self
			any_valid = yield i unless any_valid
		end
		any_valid
	end

	def my_none?
		no_valid = true
		for i in self
			if no_valid == true
				no_valid = false if yield i
			end
		end
		no_valid
	end

	def my_count
		count = 0
		for i in self
			if !block_given?
				count += 1
			elsif yield i
				count += 1
			end
		end
		count
	end

	def my_map(code)
		#return enum_for(:my_map) unless block_given?
		ary = []
		for i in self
			if block_given?
				ary.push yield code.call(i)
			else
				ary.push(code.call(i))
			end
		end
		ary
	end

	def my_inject(initial)
		injection = initial
		for i in self
			injection = yield injection, i
		end
		injection
	end
end

def multiply_els(ary)
	ary.my_inject(1) {|product,element| product * element}
end

