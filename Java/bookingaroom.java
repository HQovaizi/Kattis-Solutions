/*
 *
 *	Problem:		Booking a Room
 *	Problem ID:	bookingaroom
 *	url:				https://open.kattis.com/problems/bookingaroom
 *	Solution:		Java
 *
 */

import java.util.Scanner;
import java.util.ArrayList;

public class bookingaroom {

	/*-----result-----*/
	public static void result() {
		
		Scanner sc = new Scanner(System.in);
		int numRooms = sc.nextInt();
		int numBooked = sc.nextInt();
		
		ArrayList<Integer> bookedRooms  = new ArrayList<>();
		for (int i = 0; i < numBooked; i++) {
			int bookedRoom = sc.nextInt();
			bookedRooms.add(bookedRoom);
		}
		
		if ( numRooms == numBooked ) {
			System.out.println("too late");
			return;
		}
		else {
			for (int room = 1; room < (numRooms + 1); room++) {
				if ( !bookedRooms.contains(room) ) {
					System.out.println(room);
					break;
				}
			}
		}
		
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class