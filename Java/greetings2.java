/*
 *	Problem: "Greetings!"
 */

import java.util.Scanner;

public class greetings2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String input = sc.nextLine();
		String result = "h";
		int numE = (input.length() - 2);
		for (int i = 0; i < numE; i++) {
			result += "ee";
		}
		result += "y";
		System.out.println(result);
	}
}