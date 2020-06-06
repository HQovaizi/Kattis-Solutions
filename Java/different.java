/*
 *	Problem: A Different Problem
 */

import java.util.Scanner;
import java.lang.Math;

public class different {
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		
		while ( sc.hasNext() ) {
			long a = sc.nextLong();
			long b = sc.nextLong();
			
			long absDiff = Math.abs(a - b);
			System.out.println(absDiff);
		}

	} // end main
	
}