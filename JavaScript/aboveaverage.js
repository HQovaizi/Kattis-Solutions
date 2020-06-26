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

const getSum = (accumulator, currentValue) => {
	return accumulator + currentValue;
};

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
} // end readline

/*-----aboveAverage-----*/
function aboveAverage() {
	let line = readline().split(' ').map(Number);
	let numPeople = line[0];

	let grades = line;
	grades.shift();
	
	let sum = grades.reduce(getSum, 0); 	
	let gradesAvg = sum / numPeople;
	
	let gradesAboveAvg = grades.filter(g => g > gradesAvg);
	let numAboveAvg = gradesAboveAvg.length;
	
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
