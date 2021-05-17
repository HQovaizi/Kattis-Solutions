/*
 *
 *	Problem:		Bela
 *	Problem ID:	bela
 *	url:				https://open.kattis.com/problems/bela
 *	Solution:		Java
 *
 */

import java.util.Scanner;
import java.util.Map;
import java.util.HashMap;

public class bela {
	
	final static int CARDS_PER_HAND = 4;
		
	/*-----result-----*/
	public static void result(Map<String, int[]> scores) {
		Scanner sc = new Scanner(System.in);
		String[] line = sc.nextLine().split(" ");
		
		int numHands = Integer.parseInt(line[0]);
		String dominantSuit = line[1];
		
		int totalPoints = 0;
		for (int i = 0; i < (numHands * CARDS_PER_HAND); i++) {
			String card = sc.nextLine();
			String cardNumber = card.substring(0,1);
			String cardSuit = card.substring(1);
			
			if ( dominantSuit.equals(cardSuit) )
				totalPoints += scores.get(cardNumber)[0];
			else
				totalPoints += scores.get(cardNumber)[1];
		}
		
		System.out.println(totalPoints);
	} // end result

	/*-----main-----*/
	public static void main(String[] args) {
		Map<String, int[]> scores = new HashMap<>();
		scores.put("A", new int[]{11,11});
		scores.put("K", new int[]{4,4});
		scores.put("Q", new int[]{3,3});
		scores.put("J", new int[]{20,2});
		scores.put("T", new int[]{10,10});
		scores.put("9", new int[]{14,0});
		scores.put("8", new int[]{0,0});
		scores.put("7", new int[]{0,0});
	
		result(scores);
	} // end main

} // end class