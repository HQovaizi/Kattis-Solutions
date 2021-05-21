/*
 *
 *	Problem:		Detailed Differences
 *	Problem ID:	detaileddifferences
 *	url:				https://open.kattis.com/problems/detaileddifferences
 *	Solution:		Java
 *
 */

import java.util.Scanner;

public class detaileddifferences {
	/*-----result-----*/
	public static void result() {
		
		Scanner sc = new Scanner(System.in);
		int numCases = Integer.parseInt(sc.nextLine());
		
		
		while (numCases-- > 0) {
			String caseA = sc.nextLine();
			String caseB = sc.nextLine();

			String difference = "";			
			for (int i = 0; i < caseA.length(); i++) {
				if (caseA.charAt(i) == caseB.charAt(i))
					difference += ".";
				else
					difference += "*";
			}
			difference += "\n";
			
			System.out.println(caseA);
			System.out.println(caseB);
			System.out.println(difference);
		}
		
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class