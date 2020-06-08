/*
 *	Problem: WERTYU
 */

import java.util.Scanner;

public class wertyu {
	
	/*-----convert_wertyu-----*/
	public static String convert_wertyu(String keyboard, String line) {
		String output = "";
		for (int i = 0; i < line.length(); i++) {
			char currChar = line.charAt(i);
			
			if (currChar != ' ') {
				int keyIndex = keyboard.indexOf(currChar);
				output += keyboard.charAt( (keyIndex - 1) );
			}
			else
				output += ' ';
		}
		return output;
	} // end convert_wertyu
	
	
	/*-----main-----*/
	public static void main(String[] args) {
		String keyboard = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./";
		
		Scanner sc = new Scanner(System.in);
		
		while ( sc.hasNext() ) {
			String line = sc.nextLine();
			
			String lineConverted = convert_wertyu(keyboard, line);
			
			System.out.println(lineConverted);
		}
	} //end main
	
} // end class