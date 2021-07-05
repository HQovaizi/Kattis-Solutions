/*
 *
 *	Problem:		Sort Two Numbers
 *	Problem ID:	sorttwonumbers
 *	url:				https://open.kattis.com/problems/sorttwonumbers
 *	Solution:		Java
 *
 */

import java.util.Scanner;

public class sorttwonumbers {

	/*-----solve-----*/
	public static void solve() {
		Scanner sc = new Scanner(System.in);
		String[] input_array = sc.nextLine().split(" ");
		
		int first_int = Integer.parseInt(input_array[0]);
		int second_int = Integer.parseInt(input_array[1]);
		String result;
		if (first_int <= second_int)
			result = first_int + " " + second_int;
		else
			result = second_int + " " + first_int;
			
		System.out.println(result);
		
	} // end solve
	
	/*-----main-----*/
	public static void main(String[] args) {
		solve();
	} // end main

} // end class