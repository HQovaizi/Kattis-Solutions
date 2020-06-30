/*
 *	Problem: "I Repeat Myself I Repeat Myself I Repeat"
 *	Problem ID: "irepeatmyself"
 *	https://open.kattis.com/problems/irepeatmyself
 *
 *	Solution: Java
 */

import java.util.Scanner;

public class irepeatmyself {
	
	/*-----main-----*/
	public static void main(String[] args) {	
	
		Scanner sc = new Scanner(System.in);
		
		String line = sc.nextLine();
		int	cases = Integer.parseInt(line);
		
		for (int i = 0; i < cases; i++) {
			line = sc.nextLine();
			
			int lenLine = line.length();
			
			int output = lenLine;
			
			int index = 1;
			String lineForward;
			String lineBackward;
			while (index < lenLine) {
				lineForward = line.substring(index);
				lineBackward = line.substring(0, lenLine - index);

				if ( lineForward.equals(lineBackward) ) {
					output = index;
					break;
				}
				
				index += 1;
			}
			
			System.out.println(output);
		}
		
	} //end main
	
} // end class