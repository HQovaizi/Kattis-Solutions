/*
 *	Problem: "Provinces and Gold"
 */

import java.util.Scanner;
import java.util.Collections;
import java.util.ArrayList;

public class provincesandgold {
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int golds = sc.nextInt();
		int silvers = sc.nextInt();
		int coppers = sc.nextInt();
		
		int buyingPower = (3 * golds) + (2 * silvers) + (coppers);
		
		String result = "";
		if (buyingPower >= 8)
			result += "Province or ";
		else if (buyingPower >= 5)
			result += "Duchy or ";
		else if (buyingPower >= 2)
			result += "Estate or ";
		
		if (buyingPower >= 6) 
			result += "Gold";
		else if (buyingPower >= 3)
			result += "Silver";
		else if (buyingPower >= 0)
			result += "Copper";
		
		System.out.println(result);
	} //end main
	
} //end class