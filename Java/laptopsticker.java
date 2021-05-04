/*
 *	Problem:		Laptop Sticker
 *	Problem ID:	laptopsticker
 *	url:				https://open.kattis.com/problems/laptopsticker
 *	Solution:		Java
 */

import java.util.Scanner;

public class laptopsticker {

	/*-----result-----*/
	public static void result() {
		Scanner sc = new Scanner(System.in);
		int widthComputer, heightComputer, widthSticker, heightSticker;
		boolean widthExceeded, heightExceeded;
		
		widthComputer = sc.nextInt();
		heightComputer = sc.nextInt();
		widthSticker = sc.nextInt();
		heightSticker = sc.nextInt();
		sc.close();
		
		widthExceeded = (widthSticker >= (widthComputer - 1));
		heightExceeded = (heightSticker >= (heightComputer - 1));
		
		if ( (!widthExceeded) && (!heightExceeded) )
			System.out.println(1);
		else
			System.out.println(0);
	} // end result
	
	/*-----main-----*/
	public static void main(String[] args) {
		result();
	} // end main

} // end class