/*
 *	Problem: "Reverse"
 */

import java.util.Scanner;
import java.util.Collections;
import java.util.ArrayList;

public class ofugsnuid {
	
	
	/*-----dispArrayList-----*/
	public static void dispArrayList(ArrayList<Integer> list) {
		for (int element : list) {
			System.out.println(element);
		}
	} // end dispArrayList
	
	/*-----mySolution-----*/
	public static void mySolution(Scanner sc, int numSamples) {
		ArrayList<Integer> list = new ArrayList<Integer>();

		for (int i = 0; i < numSamples; i++) {
			list.add(sc.nextInt());
		}
		Collections.reverse(list);
		if (numSamples > 0)
			dispArrayList(list);
	} // end mySolution
	
	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numSamples = sc.nextInt();
		mySolution(sc, numSamples);
	} // end main
	
}