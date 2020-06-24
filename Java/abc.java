/*
 *	Problem: ABC
 */

import java.util.Scanner;
import java.util.Arrays;
import java.util.HashMap;

public class abc {
	
	/*-----strArrayToIntArray-----*/
	public static int[] strArrayToIntArray(String[] strArray) {
		int[] intArray = new int[strArray.length];
		for (int i = 0; i < strArray.length; i++) {
			intArray[i] = Integer.parseInt(strArray[i]); 
		}
		return intArray;
	} // end strArrayToIntArray
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		String[] line = sc.nextLine().split(" ");
		
		int[] numbers = strArrayToIntArray(line);
		Arrays.sort(numbers);
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("A", numbers[0]);
		map.put("B", numbers[1]);
		map.put("C", numbers[2]);
		
		String order = sc.nextLine();
		String output = "";
		for (int i = 0; i < order.length(); i++) {
			String currLetter = "" + order.charAt(i);
			output += map.get(currLetter) + " ";
		}
		
		output = output.substring(0, (output.length() - 1) );
		System.out.println(output);
		
	} // end main
	
} // end class