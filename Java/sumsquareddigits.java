/*
 *	Problem: "Sum Squared Digits Function"
 */

import java.util.Scanner;

public class sumsquareddigits {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int cases = sc.nextInt();
		
		while (cases-- > 0) {
			int caseNum = sc.nextInt();
			int base = sc.nextInt();
			int sum = sc.nextInt();
			
			int sumSquaredDig = 0;
			while (sum > 0) {
				int digit = (sum % base);
				sumSquaredDig += digit * digit;
				sum = (sum - digit) / base;
			}
			
			System.out.println(caseNum + " " + sumSquaredDig);
		}
	}
	
}