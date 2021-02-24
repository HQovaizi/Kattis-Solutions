/*
 *  Problem: "Job Expenses"
 */

import java.util.Scanner;

public class jobexpenses {
	
	/*-----mySolution-----*/
	public static int mySolution(Scanner sc) {
		int expenses = 0;
		int reciepts = sc.nextInt();
		
		for (int i = 0; i < reciepts; i++) {
			int item = sc.nextInt();
			if (item < 0)
				expenses += item;
		}
		
		expenses = Math.abs(expenses);
		return expenses;
	}
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int expenses = mySolution(sc);
		System.out.println(expenses);
	}
	
}