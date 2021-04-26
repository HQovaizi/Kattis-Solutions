/*
 *	Problem: "Jack-O'-Lantern Juxtaposition"
 */

import java.util.Scanner;

public class jackolanternjuxtaposition {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numEye = sc.nextInt();
		int numNose = sc.nextInt();
		int numMouth = sc.nextInt();
		
		int result = numEye * numNose * numMouth;
		System.out.println(result);
	}
}
