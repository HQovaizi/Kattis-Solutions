/*
 *	Problem: "ABC"
 */

"use strict";
const compareNumbers = (a, b) =>  a - b;

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
	
/*-----main-----*/
function main() {
	
	let inputNumbers = readline().split(' ');
	inputNumbers.sort(compareNumbers);
	
	let inputMap = new Map();
	inputMap.set('A', inputNumbers[0]);
	inputMap.set('B', inputNumbers[1]);
	inputMap.set('C', inputNumbers[2]);
	
	let inputOrder = readline();
	
	let output = "";
	var i;
	for (i = 0; i < inputOrder.length; i++) {
		let letter = inputOrder.charAt(i);
		output += inputMap.get(letter) + " ";
	}
	output = output.substring(0, (output.length - 1) );

	console.log(output);
	
} // end main