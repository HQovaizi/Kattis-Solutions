/*
 *	Problem: "Encoded Message"
 */

import java.util.Scanner;
import java.lang.Math;

public class encodedmessage {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int cases = sc.nextInt();
		
		while (cases-- > 0)  {
			String message = sc.next();
			int lenMsg = message.length();
			int lenSquare = (int)Math.sqrt(lenMsg);
			
			String result = "";
			for (int i = 0; i < lenSquare; i++) {
				int posChar = lenSquare - i - 1;
				while (posChar < lenMsg) {
					result += message.charAt(posChar);
					posChar += lenSquare;
				}
			}
			System.out.println(result);
		}
	}
	
}