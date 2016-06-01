multiples = []
max = 1000

#returns an array of all of the multiples of the given number
#where all of the multiples are less than the given max.
#can take an optional array as a third argument to input multiples into.
def find_multiples (number, max, multiples = [])
	temp = number
	while number < max do
		multiples<<number unless multiples.include? number
		number += temp
	end
	multiples
end

#returns the sum of the elements in the given array.
def sum_array array
	sum = 0
	array.each {|n| sum += n}
	sum
end

multiples = find_multiples(3, max)
multiples = find_multiples(5, max, multiples)

puts sum_array multiples