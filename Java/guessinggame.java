/*
 *
 *	Problem:		Guessing Game
 *	Problem ID:	guessinggame
 *	url:				https://open.kattis.com/problems/guessinggame
 *	Solution:		Java
 *
 */

import java.util.Scanner;
import java.lang.Math;

public class guessinggame {

	/*-----result-----*/
	public static void result() {
		Scanner sc = new Scanner(System.in);
		
		int guess;
		String response;
		int min = 0;
		int max = 11;
		do {
			guess = Integer.parseInt(sc.nextLine());
			
			if (guess != 0) {
				response = sc.nextLine();
				
				if (response.equals("right on")) {
					
					if ( (min < guess) && (guess < max) )
						System.out.println("Stan may be honest");
					else
						System.out.println("Stan is dishonest");
					
					min = 0;
					max = 11;
				}
				else if (response.equals("too high")) {
					max = Math.min(guess, max);
				}
				else {
					min = Math.max(guess, min);
				}
			}
			
		} while(guess != 0);
		
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class