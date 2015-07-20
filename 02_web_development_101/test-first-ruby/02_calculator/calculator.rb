def add(x,y)
	x+y
end

def subtract(x,y)
	x-y
end

def sum(array_to_sum)
	sum = 0
	array_to_sum.each { |x| sum += x }
	sum
end

def multiply(*multipliers)
	product = 1
	multipliers.each { |x| product *= x}
	product
end

def power(number,exponent)
	number**exponent
end

def factorial(number)
	if number == 0
		1
	else
		nth_factorial = 1
		(1..number).each { |x| nth_factorial *= x }
		nth_factorial
	end
end