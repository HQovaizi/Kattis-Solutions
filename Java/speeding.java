/*
 *	Problem: "Speeding"
 */

import java.util.Scanner;

public class speeding {

	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numCases = sc.nextInt();

		int prevTime = sc.nextInt();
		int prevSpeed = sc.nextInt();
		int maxSpeed = 0;
		
		while (--numCases > 0) {

		int currTime = sc.nextInt();
		int currSpeed = sc.nextInt();
			
		int tempMaxSpeed = (currSpeed - prevSpeed) / (currTime - prevTime);
		if (tempMaxSpeed > maxSpeed)
			maxSpeed =  tempMaxSpeed;
		prevTime = currTime;
		prevSpeed = currSpeed;
		}
		
		System.out.println(maxSpeed);
	} // main
	
}