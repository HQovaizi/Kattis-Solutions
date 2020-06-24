/*
 *	Problem: "Aaah!"
 */

import java.util.Scanner;

public class aaah {
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		
		String jon = sc.nextLine();
		String doc = sc.nextLine();
		
		if ( jon.length() < doc.length() )
			System.out.println("no");
		else
			System.out.println("go");
	} // end main
	
} // end class