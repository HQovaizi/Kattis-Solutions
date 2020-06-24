<?php

/*
 *	Problem: "A Real Challenge"
 */
  
	fscanf(STDIN, '%d', $area);
	$perimeter = (sqrt($area) * 4);
	fprintf(STDOUT, "%f\n", $perimeter); 
 
?>