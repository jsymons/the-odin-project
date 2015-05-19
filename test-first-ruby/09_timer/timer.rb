class Timer
	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0		
	end

	def seconds=(seconds)
		while seconds >= 3600
			@hours += 1
			seconds -= 3600
		end
		while seconds >= 60
			@minutes += 1
			seconds -= 60
		end
		@seconds = seconds
	end

	def seconds
		@seconds
	end

	def time_string
		"%02d:%02d:%02d" % [@hours,@minutes,@seconds]
	end

end