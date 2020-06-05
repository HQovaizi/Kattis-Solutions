/*
 * Problem: Quality-Adjusted Life-Year
 */

import java.util.Scanner;

public class qaly {

	public static void main(String[] args) {
		double result = 0;
	
		Scanner sc = new Scanner(System.in);
		double periods = sc.nextDouble();
		
		for (int i = 0; i < periods; i++) {
			double quality = sc.nextDouble();
			double years = sc.nextDouble();
			
			double qualy = quality * years;
			
			result += qualy;
		}
	
		System.out.println(result);
	} // end qaly

}