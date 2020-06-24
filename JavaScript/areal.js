/*
 *	Problem: "A Real Challenge"
 */
 
const readline = require('readline');

const rl = readline.createInterface({
 input: process.stdin,
 output: process.stdout
});

rl.on('line', (line) => {
 var area = parseInt(line);
 var perimeter = (Math.sqrt(area) * 4);
 console.log(perimeter);	 
});