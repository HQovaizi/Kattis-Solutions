/*
 *
 *	Problem:		Zamka
 *	Problem ID:	zamka
 *	url:				https://open.kattis.com/problems/zamka
 *	Solution:		Java
 *
 */

import java.util.Scanner;

public class zamka {
	
	/*-----sumDigits-----*/
	public static int sumDigits(int number) {
		String number_string = Integer.toString(number);
		int sum_digits = 0;
		for (String digit_string: number_string.split("")) {
			sum_digits += Integer.parseInt(digit_string);
		}
		return sum_digits;
	} // end sumDigits

	/*-----solve-----*/
	public static void solve() {
		Scanner sc = new Scanner(System.in);
		int lower_bound = sc.nextInt();
		int upper_bound = sc.nextInt();
		int target_sum = sc.nextInt();
		
		int minimal_integer = -1;
		for (int i = lower_bound; i <= upper_bound; i++) {
			int sum_digits = sumDigits(i);
			if (sum_digits == target_sum) {
				minimal_integer = i;
				break;
			}
		}
		
		int maximal_integer = -1;
		for (int i = upper_bound; i >= lower_bound; i--) {
			int sum_digits = sumDigits(i);
			if (sum_digits == target_sum) {
				maximal_integer = i;
				break;
			}
		}
		
		System.out.println(minimal_integer);
		System.out.println(maximal_integer);
	} // end solve
	
	/*-----main-----*/
	public static void main(String[] args) {
		solve();
	} // end main

} // end class