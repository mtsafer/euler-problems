var num = 600851475143;

//returns an array of the factors of the given number
var findFactors = function(x){
	var factors = [];
	for(var i = 2; i < x; i++){
		if(x % i == 0){
			factors.push(i);
			if(factors.indexOf(x/i) == -1){
				factors.push(x/i);
			}
			else{
				break;
			};
		};
	};
	return factors;
};

//a number is prime if it isn't devisible by the prime number
//that are less than its sqare root.

//returns true if the given value is prime
var isPrime = function(x){
	var prime = true;
	for(var i = 2; i<=Math.sqrt(x); i++){
		if(x % i == 0){
			prime = false;
		};
	};
	return prime;
};

//returns an array of prime numbers.
//takes an array as an argument.
var findPrime = function(a){
	var primes = [];
	for(var i = 0; i<a.length; i++){
		if(isPrime(a[i])){
			primes.push(a[i]);
		}
	};
	return primes;
};

//returns the largest of values in an array;
var findBiggest = function(a){
	var big = 0;
	for(var i = 0; i < a.length; i++){
		if(a[i] > big){
			big = a[i];
		};
	};
	return big;
};

print(findBiggest(findPrime(findFactors(num))));