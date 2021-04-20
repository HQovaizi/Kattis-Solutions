/*
 *	Problem: "Relocation"
 */

import java.io.*;
import java.util.*;
import java.lang.Math;

public class relocation {
	
	/*-----main-----*/
	public static void main(String[] args) throws Exception {
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		StringTokenizer st = new StringTokenizer(in.readLine());
		
		int numCompanies = Integer.parseInt(st.nextToken());
		int numRequests = Integer.parseInt(st.nextToken());
		
		// read locations
		HashMap<Integer, Integer> locations = new HashMap<Integer, Integer>();
		st = new StringTokenizer(in.readLine());
    for(int i = 1; i <= numCompanies; i++) {
			locations.put(i, Integer.parseInt(st.nextToken()));
		}

		// resolve requests
		while (numRequests-- > 0) {
			st = new StringTokenizer(in.readLine());
			int typeRequest = Integer.parseInt(st.nextToken());
			int company = Integer.parseInt(st.nextToken());
			int param = Integer.parseInt(st.nextToken());
			
			switch(typeRequest) {
				case 1:
					locations.put(company, param);
					break;
				case 2:
					int distance = Math.abs(locations.get(company) - locations.get(param));
					System.out.println(distance);
					break;
			} // end switch
		} // end while
	} // end main
	
} // end class