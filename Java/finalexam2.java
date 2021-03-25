/*
 *	Problem: "Final Exam"
 */

import java.util.Scanner;

public class finalexam2 {
	
	/*-----mySolution-----*/
	public static int mySolution(Scanner sc, int numQ) {
		int result = 0;
		String prev = sc.next();
		for (int i = 1; i < numQ; i++) {
			String curr = sc.next();
			if (prev.equals(curr))
				result += 1;
			prev = curr;
		}
		return result;
	}
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numQ = sc.nextInt();
		int result = mySolution(sc, numQ);
		System.out.println(result);	
	}
	
}