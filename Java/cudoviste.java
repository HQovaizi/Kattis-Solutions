/*
 *	Problem: "Cudoviste"
 */

import java.util.Scanner;

public class cudoviste {
	
	/*-----numOccurences-----*/
	public static int numOccurences(String str, char pattern) {
		int count = 0;
		for (char c : str.toCharArray()) {
			if (c == pattern)
				count++;
		}
		return count;
	}
	
	/*-----canPark-----*/
	public static boolean canPark(String[][]map, int i, int j, int k) {
		String parkingArea = map[i][j] + map[i][j+1] + map[i+1][j] + map[i+1][j+1];
		if ( parkingArea.contains("#") )
			return false;
		else if ( numOccurences(parkingArea, 'X') == k )
			return true;
		else
			return false;
	}

	/*-----mySolution-----*/
 	public static int[] mySolution(Scanner sc, String[] input) {
		int rows = Integer.parseInt(input[0]);
		int cols = Integer.parseInt(input[1]);
		int[] output = {0,0,0,0,0};
		
		String[][] map = new String[rows][cols];
		for (int i = 0; i < rows; i++) {
			input = sc.nextLine().split("");
			for (int j = 0; j < cols; j++) {
				map[i][j] = input[j];
			}
		}
		
		for (int k = 0; k < output.length; k++) {
			for (int i = 0; i < (rows - 1); i++) {
				for (int j = 0; j < (cols - 1); j++) {
					if ( canPark(map, i, j, k) )
						output[k] += 1;
				}
			}
		}
		
		return output;
	}

	/*-----main-----*/
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String[] input = sc.nextLine().split(" ");
		int[] output = mySolution(sc, input);
		
		for (int i = 0; i < output.length; i++) {
			System.out.println( output[i] );
		}
	}
	
}