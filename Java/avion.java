/*
 *	Problem: Avion
 */

import java.util.Scanner;

public class avion {
	
	/*-----tracker-----*/
	public static void tracker(Scanner sc) {
		String output = "";
		
		for (int i = 1; i <= 5; i++) {
			String input = sc.next();
			
			if ( input.contains("FBI") )
				output += i + " ";
		}
		
		if ( output.equals("") )
			output = "HE GOT AWAY!";
		else
			output = output.substring(0, (output.length()-1) );
		
		System.out.println(output);
	} // end tracker
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		tracker(sc);
	} //end main
	
} // end class