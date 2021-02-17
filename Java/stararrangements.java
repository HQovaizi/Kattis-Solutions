/*
 *	Problem: "Star Arrangements"
 */

import java.util.Scanner;

public class stararrangements {
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numStars = Integer.parseInt(sc.nextLine());
		
		System.out.println(numStars + ":");
		for (int i = 2; i < numStars; i++ ) {
			// test for identical number of rows
			if ( numStars % (i+i-1) == 0  ) {
				System.out.println(i + "," + (i-1));
			}
			// test for number of rows differ by one
			else if ( (numStars + i - 1) % (i+i-1) == 0  ) {
				System.out.println(i + "," + (i-1));
			}
			
			// test for identical number of rows and identical stars per row
			if ( numStars % (i+i) == 0 ) {
				System.out.println(i + "," + i);
			}
			// test for number of rows differ by one and identical stars per row
			else if ( (numStars + i) % (i+i) == 0 ) {
				System.out.println(i + "," + i);
			}
		}
	}
	
}