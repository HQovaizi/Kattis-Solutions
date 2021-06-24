/*
 *
 *	Problem:		Echo Echo Echo
 *	Problem ID:	echoechoecho
 *	url:				https://open.kattis.com/problems/echoechoecho
 *	Solution:		Java
 *
 */

import java.util.Scanner;

public class echoechoecho {
	final static int NUMBER_REPITIONS = 3;

	/*-----solve-----*/
	public static void solve() {
		Scanner sc = new Scanner(System.in);
		String word = sc.nextLine();
		String result = "";
		for (int i = 0; i < NUMBER_REPITIONS; i++) {
			result += word + " ";
		}
		System.out.println(result);
	} // end solve
	
	/*-----main-----*/
	public static void main(String[] args) {
		solve();
	} // end main

} // end class