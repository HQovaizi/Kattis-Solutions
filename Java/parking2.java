/*
 *	Problem: "Parking"
 */

import java.util.Scanner;

public class parking2 {

	public static void mySolution(Scanner sc, int cases) {
		for (int i = 0; i < cases; i++) {
			int numStores = sc.nextInt();
			
			int currentStore = sc.nextInt();
			int maxPos = currentStore;
			int minPos = currentStore;
			for (int j = 0; j < numStores - 1; j++) {
				currentStore = sc.nextInt();
				if ( currentStore > maxPos)
					maxPos = currentStore;
				if ( currentStore < minPos)
					minPos = currentStore;
			}
			
			int result = (maxPos - minPos) * 2;
			System.out.println(result);
		}
	}

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int cases = sc.nextInt();
		mySolution(sc, cases);
	}
	
}