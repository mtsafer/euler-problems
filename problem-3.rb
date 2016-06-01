number = 600851475143

#returns an array of the factors of the given number
def find_factors number
	factors = []
	(2..number).each do |n|
		if number % n == 0
			if factors.include? n
				break
			else
				factors<<n
				factors<<number/n
			end
		end
	end
	factors
end

#returns ana array of prime elements from a given array
def find_prime array
	primes = []
	array.each { |n| primes << n if is_prime? n }
	primes
end

#returns the largest element of an array
def find_biggest array
	biggest = 0
	array.each { |n| biggest = n if n > biggest}
	biggest
end

#returns true if a number is prime
def is_prime? number
	(2..Math.sqrt(number)).each {|n| return false if number % n == 0}
	true
end

puts find_biggest(find_prime(find_factors number))
puts "yaaay!"

