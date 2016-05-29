var max = 20;
var min = 1;
var num = 1;

//returns true if num is divisible by all
//the numbers between min and max.
var divide = function(num){
	var divisible = true;
	for(var i = max; i >= min; i--){
		if(num % i != 0){
			return false;
		};
	};
	return divisible;
};

//returns the number that is devisible by all numbers inbetween min and max
var findDivisible = function(){
	var isDivisible = false;
	while(!isDivisible){
		num++;
		isDivisible = divide(num);
	};
	return num;
};

print(findDivisible());