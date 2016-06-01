max = 4000000

def generate_fibonacci max
	fib = [1,2,3]
	while fib[-1] <= max do
		fib<<fib[-1]+fib[-2]
	end
	fib
end

def find_evens array
	evens = []
	array.each {|num| evens<<num if num % 2 == 0}
	evens
end

def sum_array array
	sum = 0
	array.each {|n| sum += n}
	sum
end

puts sum_array(find_evens(generate_fibonacci(max)))