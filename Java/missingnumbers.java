/*
 *	Problem: "Missing Numbers"
 */

import java.util.Scanner;

public class missingnumbers {

	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numbers = sc.nextInt();
		String missing = "";
		
		int count = 1;
		for (int i = 0; i < numbers; i++) {
			int recited = sc.nextInt();
			
			if (count != recited) {
				while (count < recited) {
					missing += count + "\n";
					count++;
				}
			}
			count++;
		}
		
		if (missing.equals(""))
			System.out.println("good job");
		else
			System.out.println(missing);
	} // end main
	
}