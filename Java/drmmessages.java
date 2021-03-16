/*
 *	Problem: "DRM Messages"
 */

import java.util.Scanner;

public class drmmessages {
	public static int STARTASCII = 65;
	public static int NUMLETTERS = 26;
	
	/*-----getRotValue-----*/
	public static int getRotValue(String input) {
		int rotValue = 0;
		for (int i = 0; i < input.length(); i++) {
			rotValue += (int)input.charAt(i) - STARTASCII;
		}
		rotValue = rotValue % NUMLETTERS;
		return rotValue;
	}
	/*-----rotate-----*/
	public static String rotate(String input) {
		int rotValue = getRotValue(input);
		String rotated = "";
		
		for (int i = 0; i < input.length(); i++) {
			int value = (int)input.charAt(i) - STARTASCII;
			int newValue = STARTASCII + ((value + rotValue) % NUMLETTERS);
			rotated += Character.toString((char) newValue);
		}
		
		return rotated;
	}
	
	/*-----merge-----*/
	public static String merge(String inputA, String inputB) {
		String merged = "";
		for (int i = 0; i < inputA.length(); i++) {
			int c = (int)inputA.charAt(i) - STARTASCII;
			int rotateBy = (int)inputB.charAt(i) - STARTASCII;
			int newC = ( (c + rotateBy) % NUMLETTERS ) + STARTASCII;
			merged += Character.toString(newC);
		}
		return merged;
	}
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String input = sc.next();
		
		int lenHalf = input.length() / 2;
		String firstHalf = input.substring(0,lenHalf);
		String secondHalf = input.substring(lenHalf);
		
		String rotatedFirst = rotate(firstHalf);
		String rotatedSecond = rotate(secondHalf);
		
		String result = merge(rotatedFirst, rotatedSecond);
		System.out.println(result);
	}	
}