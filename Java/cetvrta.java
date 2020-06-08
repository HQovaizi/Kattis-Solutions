/*
 *	Problem: Cetvrta
 */

import java.util.Scanner;

public class cetvrta {
	
	/*-----uniqueElement-----*/
	public static int uniqueElement(int x, int y, int z) {
		if (x == y) return z;
		else if (x == z) return y;
		else return x;
	} // end uniqueElement
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		
		int x1 = sc.nextInt();
		int y1 = sc.nextInt();
		
		int x2 = sc.nextInt();
		int y2 = sc.nextInt();

		int x3 = sc.nextInt();
		int y3 = sc.nextInt();
		
		int x4 = uniqueElement(x1, x2, x3);
		int y4 = uniqueElement(y1, y2, y3);
		
		System.out.println(x4 + " " + y4);
	} //end main
	
} // end class