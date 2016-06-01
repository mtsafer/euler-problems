max = 4000000

#returns an array of the fibonacci sequence where the
#final digit is less than or equal to the given max
def generate_fibonacci max
	fib = [1,2,3]
	while fib[-1] <= max do
		fib<<fib[-1]+fib[-2]
	end
	fib
end

#returns an array of the even elements from the given array
def find_evens array
	evens = []
	array.each {|num| evens<<num if num % 2 == 0}
	evens
end

#returns the sum of the elements in the given array
def sum_array array
	sum = 0
	array.each {|n| sum += n}
	sum
end

puts sum_array(find_evens(generate_fibonacci(max)))