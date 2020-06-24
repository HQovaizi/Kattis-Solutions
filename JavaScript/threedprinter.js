/*
 *	Problem: "3D Printed Statues"
 */

const readline = require('readline');

const rl = readline.createInterface({
 input: process.stdin,
 output: process.stdout
});

rl.on('line', (line) => {
 var numStatues = parseInt(line);

	var numDays = Math.log2(numStatues);
	var minNumDays = Math.ceil(numDays);
	minNumDays++;

	console.log(minNumDays);
});