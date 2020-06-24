/*
 *	Problem: "A Different Problem"
 */
 
 const readline = require('readline');
 
 const rl = readline.createInterface({
	 input: process.stdin,
	 output: process.stdout
 });
 
 rl.on('line', (line) => {
	 var ab = line.split(' ');
	 var a = parseInt(ab[0]);
	 var b = parseInt(ab[1]);
	 
	 var output = Math.abs( a - b );
	 console.log(output);	 
 });