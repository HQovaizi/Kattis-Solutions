/*
 *	Problem: "Honour Thy (Apaxian) Parent"
 */

import java.util.Scanner;

public class apaxianparent {
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String[] input = sc.nextLine().split(" ");
		String Y = input[0];
		String P = input[1];
		
		String result;
		if (Y.endsWith("ex"))
			result = Y + P;
		else if (Y.endsWith("a"))
			result = Y.substring(0, (Y.length() - 1 ) ) + "ex" + P;
		else if (Y.endsWith("e"))
			result = Y + "x" + P;
		else if (Y.endsWith("i"))
			result = Y.substring(0, (Y.length() - 1 ) ) + "ex" + P;
		else if (Y.endsWith("o"))
			result = Y.substring(0, (Y.length() - 1 ) ) + "ex" + P;
		else if (Y.endsWith("u"))
			result = Y.substring(0, (Y.length() - 1 ) ) + "ex" + P;
		else
			result = Y + "ex" + P;

		System.out.println(result);	
	}
	
}