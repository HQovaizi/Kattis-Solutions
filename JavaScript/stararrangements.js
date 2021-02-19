/*
 *	Problem: "Star Arrangements"
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
	var numStars = parseInt(readline());
	console.log( numStars + ":" );

	var i;
	for (i = 2; i < numStars; i++) {
		
		// test for identical number of rows
		if ( numStars % (i+i-1) == 0  ) {
			console.log(i + "," + (i-1));
		}
		// test for number of rows differ by one
		else if ( (numStars + i - 1) % (i+i-1) == 0  ) {
			console.log(i + "," + (i-1));
		}
		
		// test for identical number of rows and identical stars per row
		if ( numStars % (i+i) == 0 ) {
			console.log(i + "," + i);
		}
		// test for number of rows differ by one and identical stars per row
		else if ( (numStars + i) % (i+i) == 0 ) {
			console.log(i + "," + i);
		}
		
	}
}