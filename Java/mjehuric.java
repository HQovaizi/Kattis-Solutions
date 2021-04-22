/*
 *	Problem: "Mjehuric"
 */

import java.util.Scanner;
import java.util.Collections;
import java.util.ArrayList;

public class mjehuric {

	/*-----main-----*/
	public static void displayArray(int[] array) {
		for (int i = 0; i < array.length; i++) {
			if (i == (array.length - 1))
				System.out.println(array[i]);
			else
				System.out.print(array[i] + " ");
		}
	}
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] sequence = new int[5];
		
		// read sequence
		for (int i = 0; i < sequence.length; i++) {
			sequence[i] = sc.nextInt();
			// System.out.println(sequence[i]);
		}
		
		for (int iteration = 1; iteration < sequence.length; iteration++) {
			boolean swapOccured = false;
			
			for (int i = 0; i < (sequence.length - iteration); i++) {
				if (sequence[i] > sequence[i+1]) {
					int temp = sequence[i];
					sequence[i] = sequence[i+1];
					sequence[i+1] = temp;
					
					swapOccured = true;
					displayArray(sequence);
				}
			}
			
			if (swapOccured == false)
				break;
		}

	} // end main
	
}