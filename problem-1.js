//the limit
var num = 1000;

//the multiples to find.
var a = 3;
var b = 5;

//find all multiples of x and y that are less than z.
var findMultiples = function(x, y, z){
	var a = [];
	for(var i = 1; i<z; i++){
		if(i%x == 0 || i%y == 0){
			a.push(i);
		};
	};
	return a;
}

//returns the sum of an array
var sumArray = function(a){
	var sum = 0;
	for(var i = 0; i<a.length; i++){
		sum += a[i];
	};
	return sum;
};

//print the answer
print(sumArray(findMultiples(a,b,num)))