/*
 *
 *	Problem:		Drunk Vigenère
 *	Problem ID:	drunkvigenere
 *	url:				https://open.kattis.com/problems/drunkvigenere
 *	Solution:		Java
 *
 */

import java.util.Scanner;

public class drunkvigenere {

	/*-----solve-----*/
	public static void solve() {
		String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		
		Scanner sc = new Scanner(System.in);
		String encrypted_message = sc.nextLine().trim();
		String key = sc.nextLine().trim();
		
		String decrypted_message = "";
		for (int index = 0; index < encrypted_message.length(); index ++) {
			if ( index % 2 == 0 )
				decrypted_message += alphabet.charAt(	(26 + alphabet.indexOf(encrypted_message.charAt(index)) - alphabet.indexOf(key.charAt(index))) % 26 );
			else
				decrypted_message += alphabet.charAt(	(alphabet.indexOf(encrypted_message.charAt(index)) + alphabet.indexOf(key.charAt(index))) % 26 );
		}
		
		System.out.println(decrypted_message);
	} // end solve
	
	/*-----main-----*/
	public static void main(String[] args) {
		solve();
	} // end main

} // end class