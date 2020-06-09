/*
 *	Problem: 3D Printed Statues
 */

import java.util.Scanner;
import java.lang.Math;

public class threedprinter {
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numStatues = sc.nextInt();
		
		double numDays = (Math.log(numStatues) / Math.log(2));
		int minNumDays = (int) Math.ceil(numDays);
		minNumDays++;
		
		System.out.println(minNumDays);
	} //end main
	
} // end class