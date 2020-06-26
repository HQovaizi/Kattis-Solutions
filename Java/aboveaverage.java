/*
 *	Problem: "Above Average"
 *	Problem ID: "aboveaverage"
 *	https://open.kattis.com/problems/aboveaverage
 *
 *	Solution: Java
 */
 
import java.util.Scanner;

public class aboveaverage {
	
	/*-----sumIntArray-----*/
	public static int sumIntArray(int[] array) {
		int sum = 0;
		for (int val : array) {
			sum += val;
		}
		return sum;
	} // sumIntArray
	
	/*-----aboveAverage-----*/
	public static double aboveAverage(Scanner sc) {
		int numPeople = sc.nextInt();
		
		int grades[] = new int[numPeople];
		for (int i = 0; i < numPeople; i++) {
			grades[i] = sc.nextInt();
		}
		
		int sumGrades = sumIntArray(grades);
		double averageGrades = sumGrades / numPeople;
		
		double aboveAverage = 0;
		for (int grade : grades) {
			if (grade  > averageGrades)
				aboveAverage += 1;
		}
		
		double percAboveAvg = 100 * (aboveAverage / numPeople);
		return percAboveAvg;
	} // end aboveAverage
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		
		int cases = sc.nextInt();
		
		for (int i = 1; i <= cases; i++) {
			double result = aboveAverage(sc);
			System.out.printf("%.3f%%%n", result);
		}
	} // end main
	
} // end class