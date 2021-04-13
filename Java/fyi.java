/*
 *	Problem: "FYI"
 */

import java.util.Scanner;
import java.util.Collections;
import java.util.ArrayList;

public class fyi {
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String number = sc.next();
		if (number.startsWith("555"))
			System.out.println(1);
		else
			System.out.println(0);
	}
	
}