/*
 * Problem: Roaming Romans
 */

import java.util.Scanner;
import java.lang.Math;

public class romans {
	
	static final double Miles_To_Paces = (1000) * (5280.0 / 4854);

	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
	
		double engMiles = sc.nextDouble();
		
		double romanPaces = engMiles * Miles_To_Paces;
		double pacesRounded = Math.round(romanPaces);
		
		System.out.printf("%.0f%n", pacesRounded);
	} // end main

}