<?php

/*
 *	Problem: "Aaah!"
 */
  
 fscanf(STDIN, "%s", $jon);
 fscanf(STDIN, "%s", $doc);
 
 if ( strlen($jon) < strlen($doc) ) {
	 echo "no";
 }
 else {
	 echo "go";
 }
 
?>