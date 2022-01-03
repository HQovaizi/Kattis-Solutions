/*
 *
 *	Problem:		SMIL
 *	Problem ID:	smil
 *	url:				https://open.kattis.com/problems/smil
 *	Solution:		Java
 *
 */

import java.util.Scanner;

public class smil {

	/*-----solve-----*/
	public static void solve() {
		Scanner sc = new Scanner(System.in);
		String input = sc.nextLine();
		
		String result = "";
		boolean eyes_found = false;
		int memory_address = -1;
		for (int index = 0; index < input.length(); index++) {
			char current_symbol = input.charAt(index);

			if ( (current_symbol == ':') || (current_symbol == ';') ) {
				eyes_found = true;
				memory_address = index;
			}
			else if ( (eyes_found) && (current_symbol == ')') ) {
				result += memory_address + "\n";
				eyes_found = false;
			}
		}
		System.out.println(result);
	} // end solve
	
	/*-----main-----*/
	public static void main(String[] args) {
		solve();
	} // end main

} // end class