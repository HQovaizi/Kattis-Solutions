/*
 *	Problem: Transit Woes
 *
 */

import java.util.Scanner;

public class transitwoes {
	
	/*-----arrayStringToInt-----*/
	public static int[] arrayStringToInt(String[] arrayStrings) {
		int lenArray = arrayStrings.length;		
		int[] arrayInts = new int[lenArray];
		
		for (int i = 0; i < lenArray; i++) {
			arrayInts[i] = Integer.parseInt(arrayStrings[i]);
		}
		
		return arrayInts;
	}

	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String input = sc.nextLine();
		int[] inputArray = arrayStringToInt(input.split(" "));
		
		int timeStart = inputArray[0];
		int timeClass = inputArray[1];
		int numberTransits = inputArray[2];

		input = sc.nextLine();
		int[] timeBetweenTransfers = arrayStringToInt(input.split(" "));
		
		input = sc.nextLine();
		int[] timeInTransfers = arrayStringToInt(input.split(" "));
		
		input = sc.nextLine();
		int[] busIntervals = arrayStringToInt(input.split(" "));
		
		int currTime = timeStart;
		for (int i = 0; i < numberTransits; i++) {
			
			currTime += timeBetweenTransfers[i];
		
			int nextBus = busIntervals[i];
			
			if ( (currTime % nextBus) != 0 )
				currTime += nextBus - (currTime % nextBus);
			
			currTime += timeInTransfers[i];			
		}
		
		currTime += timeBetweenTransfers[numberTransits];
		
		if (currTime <= timeClass)
			System.out.println("yes");
		else
			System.out.println("no");
		
	} // end main

} //end class