/*
 *	Problem: "Odd Gnome"
 */

import java.io.*;
import java.util.*;

public class oddgnome {
	
	/*-----main-----*/
	public static void main(String[] args) throws Exception {
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		StringTokenizer st = new StringTokenizer(in.readLine());
		
		int numGroups = Integer.parseInt(st.nextToken());
		while (numGroups-- > 0) {
			st = new StringTokenizer(in.readLine());
			int numGnomes = Integer.parseInt(st.nextToken());
			int currId = Integer.parseInt(st.nextToken());
			for (int id = 2; id <= numGnomes; id++) {
				int nextId = Integer.parseInt(st.nextToken());
				if ( nextId != (currId + 1) ) {
					System.out.println(id);
					break;
				}
				currId = nextId;				
			} // end for
		} // end while

	} // end main
	
}