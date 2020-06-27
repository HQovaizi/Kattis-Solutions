/*
 *	Problem: "Avion"
 *	Problem ID: "avion"
 *	https://open.kattis.com/problems/avion
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
} // end readline
	
/*-----main-----*/
function main() {
	let result = [];
	let cases = 5;
	
	var i;
	for (i = 1; i <= cases; i++) {
		let line = readline();
		//console.log(line);
		
		if ( line.includes("FBI") )
			result.push(i);
	}
	
	let output;
	if (result.length == 0)
		output = "HE GOT AWAY!";
	else
		output = result.toString().replace(/,/g, " ");
	
	console.log(output);
} // end main