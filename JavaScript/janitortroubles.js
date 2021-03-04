/*
 *	Problem: "Janitor Troubles"
 */

const readline = require('readline');

const rl = readline.createInterface({
	input: process.stdin,
	output: process.stdout
});

/*-----bretschneider-----*/
function bretschneider(s1, s2, s3, s4) {
	let semiperimeter = (s1 + s2 + s3 + s4) / 2;
	let maxArea = Math.sqrt(
		(semiperimeter - s1) *
		(semiperimeter - s2) *
		(semiperimeter - s3) *
		(semiperimeter - s4)
	);
	return maxArea;
}

rl.on('line', (line) => {
	let sideLengths = line.split(" ");

	let s1 = parseInt(sideLengths[0]);
	let s2 = parseInt(sideLengths[1]);
	let s3 = parseInt(sideLengths[2]);
	let s4 = parseInt(sideLengths[3]);
	
	let maxArea = bretschneider(s1, s2, s3, s4);
	console.log( maxArea );	
});