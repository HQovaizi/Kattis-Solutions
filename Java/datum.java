/*
 *	Problem: Datum
 */

import java.util.Scanner;

public class datum {
	final static int year = 2009;
	
	/*-----main-----*/
	public static void main(String[] args) {
		int[] monthKeyValue = {1,4,4,0,2,5,0,3,6,1,4,6};
		String[] weekDays = {"Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"};
		Scanner sc = new Scanner(System.in);
		
		int day = sc.nextInt();
		int month = sc.nextInt();
		
		int key = monthKeyValue[ (month - 1) ];		
		int result = ( (day + key + 17) % 7 );
		
		String dayOfWeek = weekDays[result];
		System.out.println(dayOfWeek);
	} //end main
	
} // end class