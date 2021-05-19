/*
 *
 *	Problem:		Cold-puter Science
 *	Problem ID:	cold
 *	url:				https://open.kattis.com/problems/cold
 *	Solution:		Java
 *
 */

import java.util.Scanner;
import java.util.ArrayList;

public class cold {

	/*-----result-----*/
	public static void result() {
		Scanner sc = new Scanner(System.in);
		int numTemperatures = Integer.parseInt(sc.nextLine());
		String[] temperatures = sc.nextLine().split(" ");
		
		int lessThanZero = 0;
		for (int i = 0; i < temperatures.length; i++) {
			int temperature = Integer.parseInt(temperatures[i]);
			if (temperature < 0)
				lessThanZero += 1;
		}
		
		System.out.println(lessThanZero);
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class