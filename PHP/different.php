<?php

/*
 *	Problem: "A Different Problem"
 */
  
 while ( fscanf(STDIN, '%d %d', $a, $b) === 2 ) {
	 $output = abs($a - $b);
	 fprintf(STDOUT, "%d\n", $output); 
 }
 
?>