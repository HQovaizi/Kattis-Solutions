/*
 *	Problem: Hanging Out on the Terrace
 *
 */

import java.util.Scanner;

public class hangingout {
	
	/*-----number_prohibited-----*/
	public static void number_prohibited(Scanner sc, int limit, int cases) {
		int curr = 0;
		int prohibited = 0;
		
		for (int i = 1; i <= cases; i++) {
			String action = sc.next();
			int number = sc.nextInt();
			
			if (action.equals("enter")) {
				if (number + curr <= limit)
					curr += number;
				else
					prohibited += 1;
			}
			else if (action.equals("leave")) {
				curr -= number;
			}
		}
		System.out.println(prohibited);
	} // end number_prohibited
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		int limit = sc.nextInt();
		int cases = sc.nextInt();
		number_prohibited(sc, limit, cases);
	} // end main
	
}