/*
 *	Problem: Number Fun
 *
 */
 
import java.util.Scanner;

public class numberfun {
	
	/*-----testArithmetic-----*/
	public static void testArithmetic(Scanner sc) {
		int a = sc.nextInt();
		int b = sc.nextInt();
		int c = sc.nextInt();
		
		if (a + b == c)	System.out.println("Possible");
		else if (a * b == c) System.out.println("Possible");
		else if (a - b == c) System.out.println("Possible");
		else if (b - a == c) System.out.println("Possible");
		else if ( (a / b == c) && (a % b == 0) ) System.out.println("Possible");
		else if ( (b / a == c) && (b % a == 0) ) System.out.println("Possible");
		else System.out.println("Impossible");
	} // end testArithmetic
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		int cases = sc.nextInt();
		
		for (int i = 0; i < cases; i++) {
			testArithmetic(sc);
		}
	} // end main
	
}