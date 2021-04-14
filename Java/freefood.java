/*
 *	Problem: "Free Food"
 */

import java.util.*;

public class freefood {
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int events = sc.nextInt();
		
		Set<Integer> datesSet = new HashSet<>();
		while (events-- > 0) {
			int	startDate = sc.nextInt();
			int	endDate = sc.nextInt();
			
			for (int date = startDate; date <= endDate; date++) {
				datesSet.add(date);
			}
		}
		
		System.out.println(datesSet.size());
	}
	
}