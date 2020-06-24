/*
 *	Problem: "A Real Challenge"
 */

import java.util.Scanner;
import java.lang.Math;

public class areal {
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		
		long area = sc.nextLong();
		double perimeter = (Math.sqrt(area) * 4);

		System.out.println(perimeter);
	} // end main
	
} // end class