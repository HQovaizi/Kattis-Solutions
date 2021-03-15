/*
 *	Problem: "Boat Parts"
 */

import java.util.Scanner;
import java.util.Set;
import java.util.HashSet;

public class boatparts {
	
	/*-----mySolution-----*/
	public static String mySolution(Scanner sc, int numParts, int numDays) {
		String result = "paradox avoided";
		Set<String> parts = new HashSet<>();
		
		for (int day = 1; day <= numDays; day++) {
			String part = sc.next();
			parts.add(part);
			
			if (parts.size() == numParts)
				return String.valueOf(day);
		}
		
		return result;
	}
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numParts = sc.nextInt();
		int numDays = sc.nextInt();
		String result = mySolution(sc, numParts, numDays);
		System.out.println(result);	
	}
	
}