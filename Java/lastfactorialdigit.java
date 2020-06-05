/*
 * Problem: Last Factorial Digit
 */

import java.util.Scanner;

public class lastfactorialdigit {
	
	/*-----calcFactorial-----*/
	public static int calcFactorial(int n) {
		int factorial = 1;
		for (int i = 1; i < n; i++) {
			factorial *= (i+1);
		}
		return factorial;
	} // end calcFactorial

	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numCases = sc.nextInt();
		
		for (int i = 0; i < numCases; i++) {
			int n = sc.nextInt();
			int factorial = calcFactorial(n);
			System.out.printf("%d%n", (factorial % 10) );		
		}
			
	} // end main

}