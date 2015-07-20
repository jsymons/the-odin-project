def ftoc(fahrenheit)
	celsius = (((fahrenheit.to_f - 32) * 5)/9)
	celsius
end

def ctof(celsius)
	fahrenheit = (((celsius*9).to_f/5)+32)
	fahrenheit
end