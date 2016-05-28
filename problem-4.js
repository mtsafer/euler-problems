
//returns true if the array contains elements in a palindome order
var isPalindrome = function(a){
	a = numToArray(a);
	var palindrome = true;
	for(var i = 0; i < a.length; i++){
		if(a[i] != a[a.length - 1 - i]){
			palindrome = false;
		};
	};
	return palindrome;
};

//returns an array of each digit of a number
var numToArray = function(num){
	var a = [];
	for(var i = 10; i < num*10; i = i*10){
		a.push(Math.floor(num%i));
	};
	return a;
};

//returns an array of the products of numbers with the given number of digits.
//i.e. The products of numbers 1-9 (for digit = 1)
var products = function(digit){
	var products = [];
	for(var i = Math.pow(10,digit)/10; i<Math.pow(10,digit+1)/10, i++){
		for(var j = Math.pow(10,digit)/10; j<Math.pow(10,digit+1)/10, j++){
			products.push(i*j);
		};
	};
	return products;
};

//returns an array of palindromes
//takes an array of numbers
var palindromeArray = function(nums){
	var a = [];
	for(var i = 0; i < nums.length; i++){
		if(isPalindrome(nums[i])){
			a.push(num[i]);
		};
	};
	return a;
};

//returns the largest value in an array
var findLargest = function(a){
	var big = 0;
	for(var i = 0; i < a.length; i++){
		if(a[i] > big){
			big = a[i];
		};
	};
	return big;
};

print(findLargest(palindromeArray(products(3))));