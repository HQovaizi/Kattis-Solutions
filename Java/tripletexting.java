/*
 *	Problem: Triple Texting
 */

import java.util.Scanner;

public class tripletexting {
	
	public static void produce_word(String input) {
		int wordLength = input.length() / 3;
		
		String a = input.substring(0,wordLength);
		String b = input.substring(wordLength,wordLength*2);
		String c = input.substring(wordLength*2);
		
		if ( a.equals(b) ) System.out.println(a);
		else if ( a.equals(c) )	System.out.println(a);
		else System.out.println(b);
	} // end produce_word
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		String input = sc.next();
		produce_word(input);
	} // end main
	
}