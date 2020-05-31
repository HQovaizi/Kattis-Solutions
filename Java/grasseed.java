/*
 *	Problem: Grass Seed Inc.
 */

import java.util.Scanner;

public class grassseed {
	
	/*-----calcCost-----*/
	public static double calcCost(Scanner sc) {
		double totalCost;
		
		double costPerUnit = sc.nextDouble();
		int numLawns = sc.nextInt();
		
		double totalArea = 0;
		for (int i = 1; i <= numLawns; i++) {
			double width = sc.nextDouble();
			double length = sc.nextDouble();
			double area = width * length;	
			totalArea += area;
		}
		
		totalCost = totalArea * costPerUnit;
		return totalCost;
	} // end calcCost
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		
		double ouput = calcCost(sc);
		
		System.out.println(ouput);
	} //end main
	
} // end class
