/*
 *	Problem: "Poker Hand"
 */

import java.util.Scanner;
import java.util.HashMap;
import java.util.Iterator;

public class pokerhand {
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		String[] lineArr = (sc.nextLine()).split(" ");
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		for (int i = 0; i < lineArr.length; i++) {
			String card = lineArr[i];
			String rank = "" + card.charAt(0);
			
			if ( map.containsKey(rank) ) {
				int val = map.get(rank) + 1;
				map.put(rank, val);
			}
			else {
				map.put(rank, 1);
			}
			
		}
		
		int max = 1;
		Iterator <String> it = map.keySet().iterator();
		while (it.hasNext()) {
			String key = it.next();
			int val = map.get(key);
			
			if ( val > max )
				max = val;
		}
		System.out.println(max);
		
	} //end main
	
} // end class