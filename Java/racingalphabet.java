/*
 *	Problem:		Racing Around the Alphabet
 *	Problem ID:	racingalphabet
 *	url:				https://open.kattis.com/problems/racingalphabet
 *	Solution:		Java
 */

import java.util.Scanner;

public class racingalphabet {
	final static String soccerPitch = "ABCDEFGHIJKLMNOPQRSTUVWXYZ '";
	final static int numChars = 28;
	final static double diameter = 60; // feet
	final static double speed = 15; // feet per second
	final static double pickupDelay = 1; // second
	final static double circumference = 2 * Math.PI * (diameter / 2); // ~ 188.495559 ft
	final static double feetPerTile = circumference / 28; // ~ 6.731984 ft
	
	/*-----getMinDistance-----*/
	public static double getMinDistance(int posCurrent, int posNext) {
		double minDistance = Math.min(
			Math.abs(posCurrent - posNext),
			(numChars - Math.abs(posCurrent - posNext))
		);
		return minDistance;
	} // end getMinDistance

	/*-----calculateTime-----*/
	public static double calculateTime(String[] array) {
		double resultTime = pickupDelay;
		double resultDist = 0;
		
		for (int i = 1; i < array.length; i++) {
			int posCurr = soccerPitch.indexOf(array[i]);
			int posNext = soccerPitch.indexOf(array[i - 1]);
			double minDist = getMinDistance(posCurr, posNext);

			resultDist += minDist * feetPerTile;
			resultTime += pickupDelay;
		}
		resultTime += resultDist / speed;
		return resultTime;
	} // end calculateTime

	/*-----result-----*/
	public static void result() {
		Scanner sc = new Scanner(System.in);
		int numAphorisms = Integer.parseInt(sc.nextLine());
		while (numAphorisms-- > 0) {
			String aphorism = sc.nextLine();
			String[] aphorismArray = aphorism.split("");
			double resultTime = calculateTime(aphorismArray);
			System.out.println(resultTime);
		}
		sc.close();
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class