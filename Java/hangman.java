/*
 *	Problem: "Hangman"
 */

import java.util.Scanner;
import java.util.Set;
import java.util.HashSet;

public class hangman {
	public static final int LIMIT = 10;
	
	/*-----StringToSet-----*/
	public static Set<String> StringToSet(String str) {
		Set<String> strSet = new HashSet<String>();
		for (int i = 0; i < str.length(); i++) {
			strSet.add(str.charAt(i) + "");
		}
		return strSet;
	}
	
	/*-----mySolution-----*/
	public static String mySolution(String word, String guesses) {
		String result = "LOSE";
		
		Set<String> wordSet = StringToSet(word);
		int correct = 0;
		int incorrect = 0;
		for (int i = 0; i < guesses.length(); i++) {
			if ( wordSet.contains(guesses.charAt(i) + "") )
				correct++;
			else
				incorrect++;
				
			if (correct == wordSet.size()) {
				result = "WIN";
				break;
			}
			else if (incorrect == LIMIT) {
				break;
			}
		}
		return result;
	}
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String word = sc.next();
		String guesses = sc.next();
		
		String result = mySolution(word, guesses);
		System.out.println(result);	
	}
	
}