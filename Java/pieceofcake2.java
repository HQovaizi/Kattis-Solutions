/*
 * Problem: Piece of Cake!
 * 
 */

import java.util.Arrays;
import java.util.Collections;
import java.util.Scanner;

public class pieceofcake2 {

	public static void main(String[] args) {
		final int thickness = 4;
		
		Scanner sc = new Scanner(System.in);
	
		int length = sc.nextInt();
		int horizDist = sc.nextInt();
		int vertDist = sc.nextInt();

		int volPieceA = horizDist * vertDist * thickness;
		int volPieceB = horizDist * (length - vertDist) * thickness;
		int volPieceC = (length - horizDist) * vertDist * thickness;
		int volPieceD = (length - horizDist) * (length - vertDist) * thickness;
		
		Integer[] volArr = {volPieceA, volPieceB, volPieceC, volPieceD};
		int maxVolume = Collections.max(Arrays.asList(volArr));
		
		System.out.println(maxVolume);
	} //end main

}