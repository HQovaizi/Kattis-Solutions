/*
 *	Problem: "Above Average"
 *	Problem ID: "aboveaverage"
 *	https://open.kattis.com/problems/aboveaverage
 *
 *	Solution: JavaScript
 */

"use strict";

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
	inputString += inputStdin;
});

process.stdin.on('end', _ => {
	inputString = inputString.trim().split('\n').map(string => {
		return string.trim();
	});
	
	main();
});

/*-----readline-----*/
function readline() {
	return inputString[currentLine++];
}

/*-----aboveAverage-----*/
function aboveAverage() {
	let line = readline().split(' ').map(Number);
	let numPeople = line[0];
	
	let sumGrades = 0;
	var i;
	for (i = 1; i <= numPeople; i++) {
		sumGrades += line[i];
	}

	let gradesAvg = sumGrades / numPeople;
	
	let numAboveAvg = 0;
	for (i = 1; i <= numPeople; i++) {
		let grade = line[i];
		
		if (grade > gradesAvg)
			numAboveAvg += 1;
	}
	
	let percAboveAvg = numAboveAvg / numPeople;
	percAboveAvg = (percAboveAvg * 100).toFixed(3);
	return percAboveAvg;
} // end aboveAverage
	
/*-----main-----*/
function main() {
	let cases = parseInt(readline());
	var i;
	for (i = 1; i <= cases; i++) {
		let result = aboveAverage();
		console.log(result + "%");
	}
} // end main