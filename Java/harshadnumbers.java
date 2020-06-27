/*
 *	Problem: "Harshad Numbers"
 */

import java.util.Scanner;

public class harshadnumbers {
	final static int INPUT_LIMIT = 1_000_000_000;

	/*-----sumDigits-----*/
	public static int sumDigits(String line) {
		int sum = 0;
		
		for (int i = 0; i < line.length(); i++) {
			String digitStr = ("" + line.charAt(i));
			int digitInt = Integer.parseInt(digitStr);
			sum += digitInt;
		}
		
		return sum;
	} // end sumDigits
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		String line = sc.nextLine();
		int n = Integer.parseInt(line);
		
		while (n <= INPUT_LIMIT) {
			
			int sum = sumDigits(line);
			
			if ( (n % sum) == 0 ) {
				System.out.println(n);
				break;
			}
			
			n += 1;
			line = "" + n;
		}
	} // end main
	
}