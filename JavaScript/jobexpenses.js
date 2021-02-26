/*
 *  Problem: "Job Expenses"
 */
 
const readline = require('readline');
let currentLine = 1;

const rl = readline.createInterface({
	input: process.stdin,
	output: process.stdout
});


let reciepts = 0;
rl.on('line', (line) => {
	if (currentLine == 1) {
		reciepts = parseInt(line);
	}
	else if (currentLine == 2) {
		let items = line.split(" ");
		let expenses = 0;
		
		let i;
		for (i = 0; i < reciepts; i++) {
			let item = parseInt(items[i]);
			if (item < 0)
				expenses += Math.abs(item);
		}
		console.log( expenses );
	}
	
	currentLine++;
});