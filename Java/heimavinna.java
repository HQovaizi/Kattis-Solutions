/*
 *	Problem: "Homework"
 */

import java.util.Scanner;

public class heimavinna {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String input = sc.nextLine();
		int result = 0;
		
		String[] problems = input.split(";");
		for (int i = 0; i < problems.length; i++ ) {

			if ( problems[i].contains("-") ) {
				String[] range = problems[i].split("-");
				int start = Integer.parseInt(range[0]);
				int end = Integer.parseInt(range[1]);
				result += end - start + 1; // +1 since range inclusive
			}
			else {
				result += 1;
			}
				
		}
		
		System.out.println(result);
	}
	
}