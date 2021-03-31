/*
 *	Problem: "Stopwatch"
 */

import java.util.Scanner;

public class stopwatch {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numPressed = sc.nextInt();
		
		if (numPressed % 2 == 1) {
			System.out.println("still running");
		}
		else {
			int result = 0;
			while (numPressed > 0) {
				int t1 = sc.nextInt();
				int t2 = sc.nextInt();
				result += t2 - t1;
				
				numPressed -= 2;
			}
			System.out.println(result);
		}
	}
	
}