/*
 *	Problem: "Chanukah Challenge"
 */

import java.util.Scanner;

public class chanukah {
	
	public static void mySolution(Scanner sc, int numCases) {
		for (int i = 0; i < numCases; i++) {
			int caseNum = sc.nextInt();
			
			int holidays = sc.nextInt();
			int result = 0;
			for (int j = 1; j <= holidays; j++) {
				result += j;
			}
			result += holidays;
			
			System.out.println(caseNum + " " + result);
		}
	}
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numCases = sc.nextInt();
		mySolution(sc, numCases);
	}
	
}