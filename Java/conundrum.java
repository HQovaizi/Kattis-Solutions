/*
 *
 *	Problem:		Cryptographer's Conundrum
 *	Problem ID:	conundrum
 *	url:				https://open.kattis.com/problems/conundrum
 *	Solution:		Java
 *
 */

import java.util.Scanner;

public class conundrum {
	/*-----result-----*/
	public static void result() {
		
		Scanner sc = new Scanner(System.in);
		String cipher = sc.nextLine();
		
		int numDays = cipher.length();
		for (int i = 0; i < cipher.length(); i += 3) {
			if (cipher.charAt(i) == 'P')
				numDays -= 1;
			if (cipher.charAt(i+1) == 'E')
				numDays -= 1;
			if (cipher.charAt(i+2) == 'R')
				numDays -= 1;
		}
		
		System.out.println(numDays);
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class