/*
 *
 *	Problem:		Add Two Numbers
 *	Problem ID:	addtwonumbers
 *	url:				https://open.kattis.com/problems/addtwonumbers
 *	Solution:		Java
 *
 */

import java.util.Scanner;

public class addtwonumbers {

	/*-----solve-----*/
	public static void solve() {
		Scanner sc = new Scanner(System.in);
		String[] input_array = sc.nextLine().split(" ");
		
		int first_int = Integer.parseInt(input_array[0]);
		int second_int = Integer.parseInt(input_array[1]);
		int sum = first_int + second_int;
		System.out.println(sum);
		
	} // end solve
	
	/*-----main-----*/
	public static void main(String[] args) {
		solve();
	} // end main

} // end class