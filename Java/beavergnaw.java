/*
 *	Problem: Beavergnaw
 */

import java.util.Scanner;
import java.lang.Math;

public class beavergnaw {
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		
		int D = sc.nextInt();
		int V = sc.nextInt();
		
		while ( !( (D == 0) && (V == 0) ) ) {
			double v = (12*(D*Math.pow((D/2.0),2) - V/Math.PI) - Math.pow(D,3))/2.0;
			double d = Math.cbrt(v);
						
			d = Math.round(d*Math.pow(10,9));
			d = d*Math.pow(10,-9);
			
			System.out.printf("%.9f\n", d);
			
			D = sc.nextInt();
			V = sc.nextInt();
		}
		
	} //end main
	
} // end class