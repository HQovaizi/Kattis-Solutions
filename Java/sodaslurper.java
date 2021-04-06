/*
 *	Problem: "Soda Slurper"
 */

import java.util.Scanner;

public class sodaslurper {
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int start = sc.nextInt();
		int found = sc.nextInt();
		int required = sc.nextInt();
		
		int numBottles = start + found;
		int numSodas = 0;
		while ( (numBottles - required) >= 0 ) {
			numBottles -= required;
			numBottles += 1;
			numSodas += 1;
		}
		System.out.println(numSodas);
	}
	
}
