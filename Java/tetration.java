/*
 *	Problem: "Tetration"
 */

import java.util.Scanner;
import java.lang.Math;

public class tetration {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double n = sc.nextFloat();
		double a = Math.pow(n, 1/n);
		System.out.format("%.6f", a);
	}
	
}