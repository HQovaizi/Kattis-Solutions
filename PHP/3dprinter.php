<?php

/*
 *	Problem: "3D Printed Statues"
 */
  
 fscanf(STDIN, '%d', $numStatues);
 
 $numDays = log($numStatues, 2);
 $minNumDays = ceil($numDays);
 $minNumDays++;
 
 fprintf(STDOUT, "%d\n", $minNumDays);
 
?>