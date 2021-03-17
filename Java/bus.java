/*
 *	Problem: "Bus"
 */

import java.util.Scanner;

public class bus {
	
	/*-----mySolution-----*/
	public static void mySolution(Scanner sc, int cases) {
		for (int i = 0; i < cases; i++) {
			int k = sc.nextInt();
			int result = 0;
			for (int j = 0; j < k; j++) {
				result = (result*2) + 1;
			}
			System.out.format("%d\n", result);
		}
	}
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int cases = sc.nextInt();
		mySolution(sc, cases);
	}
	
}