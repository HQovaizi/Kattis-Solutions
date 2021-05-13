/*
 *
 *	Problem:		Bijele
 *	Problem ID:	bijele
 *	url:				https://open.kattis.com/problems/bijele
 *	Solution:		Java
 *
 */

import java.util.Scanner;

public class bijele {

	/*-----result-----*/
	public static void result() {
		Scanner sc = new Scanner(System.in);
		final int numPieces = 6;
		final int[] correctAmount = { 1, 1, 2, 2, 2, 8 };

		String output = "";
		for (int i = 0; i < numPieces; i++) {
			int pieceAmount = sc.nextInt();
			int difference = correctAmount[i] - pieceAmount;
			output += difference + " ";
		}
		System.out.println(output);
	} // end result

	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class