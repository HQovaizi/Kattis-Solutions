/*
 *	Problem: "License to Launch"
 */

import java.util.Scanner;

public class licensetolaunch {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int days = Integer.parseInt(sc.nextLine());
		String[] junkPerDay = sc.nextLine().split(" ");
		
		int minAmountJunk = Integer.parseInt(junkPerDay[0]);
		int daysTilLaunch = 0;
		for (int day = 0; day < days; day++) {
			int amountJunk =Integer.parseInt(junkPerDay[day]);
			if (amountJunk < minAmountJunk) {
				minAmountJunk = amountJunk;
				daysTilLaunch = day;
			}
		}
		
		System.out.println(daysTilLaunch);
	}
	
}