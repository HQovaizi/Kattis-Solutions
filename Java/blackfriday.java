/*
 *
 *	Problem:		Black Friday
 *	Problem ID:	blackfriday
 *	url:				https://open.kattis.com/problems/blackfriday
 *	Solution:		Java
 *
 */

import java.util.Scanner;
import java.util.ArrayList;

public class blackfriday {

	/*-----result-----*/
	public static void result() {
		Scanner sc = new Scanner(System.in);
		int groupSize = sc.nextInt();
		int[] outcomes = new int[6];

		ArrayList<Integer> diceRolls = new ArrayList<>();
		for (int i = 0; i < groupSize; i++) {
			int roll = sc.nextInt();
			diceRolls.add(roll);
			int index = roll - 1;
			outcomes[index] += 1;
		}

		int maxOutcome = -1;
		for (int i = 0; i < 6; i++) {
			if (outcomes[i] == 1)
				maxOutcome = i + 1;
		}

		if (maxOutcome == -1)
			System.out.println("none");
		else {
			int index = diceRolls.indexOf(maxOutcome) + 1;
			System.out.println(index);
		}
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class