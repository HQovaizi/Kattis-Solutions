/*
 *	Problem: "Janitor Troubles"
 */

import java.util.Scanner;
import java.lang.Math;

public class janitortroubles {
	
	/*-----bretschneider-----*/
	public static double bretschneider(double s1, double s2, double s3, double s4) {
		double semiperimeter = (s1 + s2 + s3 + s4) / 2;
		double maxArea = Math.sqrt(
			(semiperimeter - s1) *
			(semiperimeter - s2) *
			(semiperimeter - s3) *
			(semiperimeter - s4)
		);
		return maxArea;
	}
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int s1 = sc.nextInt();
		int s2 = sc.nextInt();
		int s3 = sc.nextInt();
		int s4 = sc.nextInt();
		
		// Bretschneider's formula
		double result = bretschneider(s1, s2, s3, s4);
		System.out.println(result);	
	}
	
}