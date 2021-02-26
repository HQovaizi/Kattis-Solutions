/*
 *	Problem: "Electrical Outlets"
 */

import java.util.Scanner;

public class electricaloutlets {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int cases = sc.nextInt();
		
		for (int i = 0; i < cases; i++) {
			int maxPowered = 0;
			int numStrips = sc.nextInt();

			for (int j = 0; j < numStrips; j++) {
				int numOutlets = sc.nextInt();
				maxPowered += numOutlets;
			}
			int occupiedOutlets = numStrips - 1;
			maxPowered -= occupiedOutlets;			
			System.out.println(maxPowered); 
		}
		
	}
}
