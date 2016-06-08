# 2520 is the smallest number that can be divided by
# each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly
# divisible by all of the numbers from 1 to 20?
######################################################
######################################################
# pseodu-code START
	# iterate starting at 0 by the the max number (20)
	# check each iteratation going backwards from the max: 20->19->...->1
	# when the number is found, return the number
# pseudo-code END

# set this variable to print a number that is
# evenly devisible by all numbers from 1..max_devision
max_devision = 20

# returns true if the number_to_check is
# evenly devisible by all numbers from 1..number
def is_evenly_divisible_by?(number, number_to_check)
	devisible = true
	(1..number).reverse_each do |i|
		if number_to_check % i != 0
			devisible = false
			break
		end
	end
	devisible
end

# returns the lowest number that is evenly devisible by
# all numbers from 1 through the given number
def find_lowest_devisible_number(increment)
	i = increment
	until is_evenly_divisible_by?(increment, i) do
		i += increment
	end
	i
end

puts find_lowest_devisible_number(max_devision)