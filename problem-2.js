var limit = 4000000;

//generates the gibonacci sequence up to the given limit.
var genFib = function(limit){
	var fib = [1,2,3];
	var sum = 0;
	while(sum < limit){
		sum = fib[fib.length - 1] + fib[fib.length - 2];
		fib.push(sum);
	};
	return fib;
};

//returns an array of the even elements of the given array.
var evenArray = function(a){
	var even = [];
	for(var i = 0; i < a.length; i++){
		if(a[i] % 2 == 0){
			even.push(a[i]);
		};
	};
	return even;
};

//returns the sum of an array
var sumArray = function(a){
	var sum = 0;
	for(var i = 0; i<a.length; i++){
		sum += a[i];
	};
	return sum;
};

print(sumArray(evenArray(genFib(limit))));