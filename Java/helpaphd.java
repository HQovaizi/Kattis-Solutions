/*
 *	Problem: "Help a PhD candidate out!"
 */

import java.util.Scanner;

public class helpaphd {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int cases = sc.nextInt();
		
		for (int i = 0; i < cases; i++ ) {
			String line = sc.next();
			if (line.contains("+")) {
				String[] operands = line.split("\\+");
				int a = Integer.parseInt(operands[0]);
				int b = Integer.parseInt(operands[1]);
				int result = a + b;
				System.out.println(result);
			}
			else if (line.contains("=")) {
				System.out.println("skipped");
			}
		}
	}
	
}