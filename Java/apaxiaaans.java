/*
 *
 *	Problem:		Apaxiaaaaaaaaaaaans!
 *	Problem ID:	apaxiaaans
 *	url:				https://open.kattis.com/problems/apaxiaaans
 *	Solution:		Java
 *
 */

import java.util.Scanner;

public class apaxiaaans {

	/*-----result-----*/
	public static void result() {
		Scanner sc = new Scanner(System.in);
		String name = sc.nextLine();

		String result = Character.toString(name.charAt(0));
		for (int i = 1; i < name.length(); i++) {
			if (name.charAt(i) != name.charAt(i - 1))
				result +=	Character.toString(name.charAt(i));
		}
		
		System.out.println(result);
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class