/*
 *	Problem: "Faktor"
 */

import java.util.Scanner;

public class faktor {
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		
		int a = sc.nextInt();
		int b = sc.nextInt();
		
		int output = ( a * (b - 1) + 1 );
		System.out.println(output);
	} // end main
	
} // end class