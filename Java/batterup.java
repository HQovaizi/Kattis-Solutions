/*
 *	Problem: "Batter Up"
 */

import java.util.Scanner;

public class batterup {
	
	public static void mySolution(Scanner sc, int numSamples) {
		double totalAtBat = 0;
		double numAtBat = 0;
		for (int i = 0; i < numSamples; i++) {
			int atBat = sc.nextInt();
			if (atBat >= 0) {
				totalAtBat += atBat;
				numAtBat += 1;
			}	
		}
		double result = totalAtBat / numAtBat;
		System.out.println(result);
	}
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numSamples = sc.nextInt();
		mySolution(sc, numSamples);
	}
	
}