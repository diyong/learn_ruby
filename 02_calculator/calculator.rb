def add numx, numy
	return numx.to_f + numy.to_f
end

def subtract numx, numy
	return numx.to_f - numy.to_f
end

def sum array
	return array.sum
end

def multiply *args
	return args.reject(&:zero?).reduce(:*)
end

def power x, y
	return x ** y
end

def factorial x
	result = 1

	for i in 1..x do
		result *= i
	end

	return result
end