/*
 *
 *	Problem:		Another Candies
 *	Problem ID:	anothercandies
 *	url:				https://open.kattis.com/problems/anothercandies
 *	Solution:		Java
 *
 */

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class anothercandies {

	/*-----result-----*/
	public static void result() throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int numCases = Integer.parseInt(br.readLine());
		
		while (numCases-- > 0) {
			br.readLine(); //reaad new line
			int numChildren = Integer.parseInt(br.readLine());
			
			long totalCandies = 0;
			for (int i = 0; i < numChildren; i++) {

				long numCandies = Long.parseLong(br.readLine()) % numChildren;
				totalCandies += numCandies;
			}

			if (totalCandies % numChildren == 0)
				System.out.println("YES");
			else
				System.out.println("NO");
		}
		
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) throws IOException {
		result();
	} // end main

} // end class