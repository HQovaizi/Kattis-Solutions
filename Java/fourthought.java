/*
 *	Problem: 4 thought
 */

import java.util.Scanner;

public class fourthought {
	
	/*-----evaluate-----*/
	public static int evaluate(int a, int b, String operator) {	
		int result;
		
		switch (operator) {
			case "*":
				result = a * b;
				break;
			case "/":
				result = a / b;
				break;
			case "+":
				result = a + b;
				break;
			case "-":
				result = a - b;
				break;
			default:
				result = -1;
		}

		return result;
	} // end evaluate
	
	
	/*-----produce_equation-----*/
	public static String produce_equation(int n) {		
		String[] operators = {"*", "+", "-", "/"};
		int result;
		String output = "no solution";
			
		for (int first_op = 0; first_op < operators.length; first_op++) {
			for (int second_op = 0; second_op < operators.length; second_op++) {
				for (int third_op = 0; third_op < operators.length; third_op++) {
					
					if ( (first_op == 0) || (first_op == 3) ) {
						if ( (second_op == 0) || (second_op == 3) )  {
							int subResultA = evaluate(4, 4, operators[first_op]);
							int subResultB = evaluate(subResultA, 4, operators[second_op]);
							int subResultC = evaluate(subResultB, 4, operators[third_op]);
							result = subResultC;
						}
						else if ( (third_op == 0) || (third_op == 3) ) {
							int subResultA = evaluate(4, 4, operators[first_op]);
							int subResultC = evaluate(4, 4, operators[third_op]);
							int subResultB = evaluate(subResultA, subResultC, operators[second_op]);
							result = subResultB;
						}
						else {
							int subResultA = evaluate(4, 4, operators[first_op]);
							int subResultB = evaluate(subResultA, 4, operators[second_op]);
							int subResultC = evaluate(subResultB, 4, operators[third_op]);
							result = subResultC;
						}
					}
					else if ( (second_op == 0) || (second_op == 3) ) {
						if ( (third_op == 0) || (third_op == 3) ) {
							int subResultB = evaluate(4, 4, operators[second_op]);
							int subResultC = evaluate(subResultB, 4, operators[third_op]);
							int subResultA = evaluate(4, subResultC, operators[first_op]);
							result = subResultA;
						}
						else {
							int subResultB = evaluate(4, 4, operators[second_op]);
							int subResultA = evaluate(4, subResultB, operators[first_op]);
							int subResultC = evaluate(subResultA, 4, operators[third_op]);
							result = subResultC;
						}
					}
					else {
						int subResultC = evaluate(4, 4, operators[third_op]);
						int subResultA = evaluate(4, 4, operators[first_op]);
						int subResultB = evaluate(subResultA, subResultC, operators[second_op]);
						result = subResultB;
					}

					//String out = "4 " + operators[first_op] + " 4 " + operators[second_op] + " 4 " + operators[third_op] + " 4 = " + result;
					//System.out.println(out);
					
					if (result == n) {
						output = "4 " + operators[first_op] + " 4 " + operators[second_op] + " 4 " + operators[third_op] + " 4 = " + n;
						return output;
					}
					
				}
			}
		}
		
		return output;
	} // end produce_equation
	
	/*-----main-----*/
	public static void main(String[] args) {		
		Scanner sc = new Scanner(System.in);
				
		int cases = sc.nextInt();
		for (int i = 1; i <= cases; i++) {	
			int n = sc.nextInt();			
			String output = produce_equation(n);
			System.out.println(output);
		}
		
	} //end main
	
} // end class