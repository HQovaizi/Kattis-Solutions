/*
 *	Problem: "Aaah!"
 */

'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', () => {
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
	var jon = readline();
	var doc = readline(); 

	if (jon.length < doc.length)
		console.log("no");
	else
		console.log("go");		
}
