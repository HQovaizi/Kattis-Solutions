/*
 *
 *	Problem:		Filip
 *	Problem ID:	filip
 *	url:				https://open.kattis.com/problems/filip
 *	Solution:		Java
 *
 */

import java.util.Scanner;

public class filip {

	/*-----reverse-----*/
	public static String reverse(String str) {
		String reversedString = "";
		for (int i = 0; i < str.length(); i++) {
			char currentChar = str.charAt(i);
			reversedString = Character.toString(currentChar) + reversedString;
		}
		return reversedString;
	}
	
	/*-----result-----*/
	public static void result() {
		Scanner sc = new Scanner(System.in);
		String line = sc.nextLine();
		String reversedLine = reverse(line);
		String[] numbers = reversedLine.split(" ");
		
		int numberA = Integer.parseInt(numbers[0]);
		int numberB = Integer.parseInt(numbers[1]);
		
		if (numberA > numberB)
			System.out.println(numberA);
		else
			System.out.println(numberB);
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class