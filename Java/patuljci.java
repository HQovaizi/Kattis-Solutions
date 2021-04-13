/*
 *	Problem: "Patuljci"
 */

import java.util.*;

public class patuljci {
	
	/*-----sumList-----*/
	public static int sumList(ArrayList<Integer> list) {
		int sum = 0;
		for (int i = 0; i < list.size(); i++) {
			sum += list.get(i);
		}
		return sum;
	}
	
	/*-----displayList-----*/
	public static void displayList(ArrayList<Integer> list) {
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
	}
	
	/*-----main-----*/
	public static void main(String[] args) {
		ArrayList<Integer> numbers = new ArrayList<>();
		Scanner sc = new Scanner(System.in);
		int numDwarves = 9;
		
		while (numDwarves-- > 0) {
			numbers.add(sc.nextInt());
		}
		// System.out.println(numbers);
		
		for (int i = 0; i < (numbers.size() - 1); i++) {
			for (int j = i; j < (numbers.size() - 1); j++) {
				// System.out.println(i + " " + j);
				
				ArrayList<Integer> numbersTest = (ArrayList<Integer>) numbers.clone();
				
				numbersTest.remove(i);
				numbersTest.remove(j);
				// System.out.println(numbers);
				
				int sum = sumList(numbersTest);

				if (sum == 100) {
					displayList(numbersTest);
					return;
				}
			}
		}
		
	}
	
}