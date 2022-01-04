/*
 *
 *	Problem:		Goat Rope
 *	Problem ID:	goatrope
 *	url:				https://open.kattis.com/problems/goatrope
 *	Solution:		Java
 *
 */

import java.util.Scanner;
import java.lang.Math;

public class goatrope {

	/*-----solve-----*/
	public static void solve() {
		Scanner sc = new Scanner(System.in);
		int x = sc.nextInt();
		int y = sc.nextInt();
		
		int x1 = sc.nextInt();
		int y1 = sc.nextInt();
		
		int x2 = sc.nextInt();
		int y2 = sc.nextInt();
		
		double min_distance = -1;
		
		if ( (x >= x2) && (y >= y2) ) {
			min_distance = Math.sqrt(Math.pow((x - x2), 2) + Math.pow((y - y2), 2));
		}
		else if ( (x >= x2) && (y <= y1) ) {
			min_distance = Math.sqrt(Math.pow((x - x2), 2) + Math.pow((y - y1), 2));
		}
		else if (x >= x2) {
			min_distance = x - x2;
		}
		else if ( (x <= x1) && (y >= y2) ) {
			min_distance = Math.sqrt(Math.pow((x - x1), 2) + Math.pow((y - y2), 2));
		}
		else if ( (x <= x1) && (y <= y1) ) {
			min_distance = Math.sqrt(Math.pow((x - x1), 2) + Math.pow((y - y1), 2));
		}
		else if (x <= x1) {
			min_distance = x1 - x;
		}
		else if (y >= y2) {
			min_distance = y - y2;
		}
		else {
			min_distance = y1 - y;
		}
		
		System.out.println(min_distance);
	} // end solve
	
	/*-----main-----*/
	public static void main(String[] args) {
		solve();
	} // end main

} // end class

