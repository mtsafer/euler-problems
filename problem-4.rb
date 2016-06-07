#A palindromic number reads the same both ways.
#The largest palindrome made from the product of
#two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

#pseudo-code
#generate factors
#iterate backwards through factors until a palindrome is found

#generates all the factors of 2 numbers of the given digit size
#returns the factors in an array
def generate_factors(digit)
	factors = []
	for i in 10**digit/10...10**digit
		for j in i...10**digit
			factors<<j*i
		end
	end
	factors
end

#returns true if the given number is a palindrome
def is_palindrome?(number)
	number.to_s.reverse == number.to_s
end

def find_largest_palindrome(factors)
	largest = 0
	factors.reverse.each do |factor|
		largest = factor
		break if is_palindrome?(largest)
	end
	largest
end

puts find_largest_palindrome generate_factors(3).uniq.sort