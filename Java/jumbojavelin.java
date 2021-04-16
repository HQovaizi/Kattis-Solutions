/*
 *	Problem: "Jumbo Javelin"
 */

import java.util.Scanner;

public class jumbojavelin {
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numJavelins = sc.nextInt();
		int fusionLoss = numJavelins - 1;
		
		int total = 0;
		while (numJavelins-- > 0) {
			total += sc.nextInt();
		}
		
		total -= fusionLoss;
		System.out.println(total);
	} // end main
	
}