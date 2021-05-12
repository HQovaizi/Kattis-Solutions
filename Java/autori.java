/*
 *
 *	Problem:		Autori
 *	Problem ID:	autori
 *	url:				https://open.kattis.com/problems/autori
 *	Solution:		Java
 *
 */

import java.util.Scanner;

public class autori {

	/*-----result-----*/
	public static void result() {
		Scanner sc = new Scanner(System.in);
    String[] names = sc.nextLine().split("-");

    String output = "";
    for (String name : names) {
      char firstLetter = name.charAt(0);
      output += Character.toString(firstLetter);
    }

    System.out.println(output);
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class