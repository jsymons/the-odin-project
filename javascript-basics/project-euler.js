/*
If we list all the natural numbers below 10 that
are multiples of 3 or 5, we get 3, 5, 6 and 9.
The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
*/

function problemOne(){
    var totalSum = 0;
	for (i = 1; i*3 < 1000; i++){
		var timesThree = i*3;
		var timesFive = i*5;
		if (timesThree < 1000 && timesThree%5 !== 0){
			totalSum += timesThree;
		}
        if (timesFive < 1000){
			totalSum += timesFive;
		}

	}

	return totalSum;
}


/*
Each new term in the Fibonacci sequence is generated
by adding the previous two terms. By starting with 1
and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence
whose values do not exceed four million, find the
sum of the even-valued terms.
*/

function problemTwo(){
	var prevNum = 1;
	var curNum = 2;
	var totalSum = 2;
	var nextNum;
	while (curNum < 4000000){
		nextNum = prevNum + curNum;
		if (nextNum %2 ===0){
		  totalSum += nextNum;
		}
		prevNum = curNum;
		curNum = nextNum;
	}
	return totalSum;
}


/*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number
600851475143 ?

Due to computational complexity do not use such
large numbers or risk hanging on code. Use
numbers smaller like 1000.
*/
function problemThree(numToFactor){
	var largestPrime = 1;
	var primes = [];
	for (i=2; i <= numToFactor; i++){
		var isPrime = true;
		for (j=0;j<primes.length;j++){
			if (i%primes[j]===0){
				isPrime = false;
			}
		}
		if(isPrime){
			if (i>largestPrime && numToFactor%i === 0){
				largestPrime = i;
			}
			primes.push(i);
		}
	}
    return(largestPrime);
}
