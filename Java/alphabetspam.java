/*
 *
 *	Problem:		Alphabet Spam
 *	Problem ID:	alphabetspam
 *	url:				https://open.kattis.com/problems/alphabetspam
 *	Solution:		Java
 *
 */

import java.util.Scanner;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class alphabetspam {

	/*-----numOccurences-----*/
	public static double numOccurences(Matcher matcher) {
		double count = 0;
		while (matcher.find()) {
			count++;
		}
		return count;
	} // end numOccurences

	/*-----calculateRatio-----*/
		public static double calculateRatio(String inputText, String matchText) {
			Pattern pattern = Pattern.compile(matchText);
			Matcher matcher = pattern.matcher(inputText);
			double ratio = numOccurences(matcher) / inputText.length();
			return ratio;
		} // end calculateRatio

	/*-----result-----*/
	public static void result() {
		String spam;
		double whitespaceRatio, lowercaseRatio, uppercaseRatio, symbolsRatio;
		Scanner sc = new Scanner(System.in);

		spam = sc.nextLine();
		sc.close();		
		
		whitespaceRatio = calculateRatio(spam, "_");
		System.out.println(whitespaceRatio);
		
		lowercaseRatio = calculateRatio(spam, "[a-z]");
		System.out.println(lowercaseRatio);
		
		uppercaseRatio = calculateRatio(spam, "[A-Z]");
		System.out.println(uppercaseRatio);
		
		symbolsRatio = calculateRatio(spam, "[^a-zA-Z_]");
		System.out.println(symbolsRatio);
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class