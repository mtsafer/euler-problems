multiples = []
max = 1000

def find_multiples number, max, multiples
	temp = number
	while number < max do
		multiples<<number unless multiples.include? number
		number += temp
	end
	multiples
end

def sum_array array
	sum = 0
	array.each {|n| sum += n}
	sum
end

multiples = find_multiples(3, max, [])
multiples = find_multiples(5, max, multiples)

puts sum_array multiples