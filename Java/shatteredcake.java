/*
 *	Problem: "Shattered Cake"
 */

import java.util.Scanner;

public class shatteredcake {
	
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		int width = sc.nextInt();
		int numPieces = sc.nextInt();
		
		int totalArea = 0;
		for (int i = 0; i < numPieces; i++) {
			int widthPiece = sc.nextInt();
			int lengthPiece = sc.nextInt();
			totalArea += widthPiece * lengthPiece;
		}
		
		int length = totalArea / width;
		System.out.println(length);		
	}
	
}