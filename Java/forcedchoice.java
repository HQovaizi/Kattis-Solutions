/*
 *	Problem: Forced Choice
 */

import java.util.Scanner;
import java.util.ArrayList;

public class forcedchoice {
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		int numCards = sc.nextInt();
		int prediction = sc.nextInt();
		int numSteps = sc.nextInt();
		
		while (numSteps-- > 0) {
			ArrayList<Integer> choices = new ArrayList<>();
			int numChoices = sc.nextInt();
			for (int i = 0; i < numChoices; i++) {
				choices.add(sc.nextInt());
			}
			
			if (choices.contains(prediction))
				System.out.println("KEEP");
			else
				System.out.println("REMOVE");
		}
		
	} // end main
	
} // end class