/*
 *	Problem: Heart Rate
 */

import java.util.Scanner;

public class heartrate {
	
	/*-----calcRate-----*/
	public static void calcRate(Scanner sc, int cases) {
		int beats;
		double seconds; 
		
		for (int i = 0; i < cases; i++) {
			beats = sc.nextInt();
			seconds = sc.nextDouble();
			
			double range = 60 / seconds;
			
			double bpm = 60 * beats / seconds;
			double minABPM = bpm - range;
			double maxABPM = bpm + range;
			
			System.out.printf("%.4f ", minABPM);
			System.out.printf("%.4f ", bpm);
			System.out.printf("%.4f\n", maxABPM);			
		}
		
	} // end calcRate
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
		int cases = sc.nextInt();
		calcRate(sc, cases);
	} // end main
	
}