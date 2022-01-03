/*
 *
 *	Problem:		T9 Spelling
 *	Problem ID:	t9spelling
 *	url:				https://open.kattis.com/problems/t9spelling
 *	Solution:		Java
 *
 */
import java.util.Scanner;
import java.util.Map;
import java.util.HashMap;

public class t9spelling {
	
	/*-----translate_T9-----*/
	public static String translate_T9(String message) {
		Map<String, String> digit_char_mapping = new HashMap<String, String>() {{
			put("2", "abc");
			put("3", "def");
			put("4", "ghi");
			put("5", "jkl");
			put("6", "mno");
			put("7", "pqrs");
			put("8", "tuv");
			put("9", "wxyz");
			put("0", " ");
		}};
		
		String key_presses = "";
		for (int index = 0; index < message.length(); index++) {
			char ch_lower = Character.toLowerCase(message.charAt(index));
			String str_lower = Character.toString(ch_lower);
			
			for (String key : digit_char_mapping.keySet()) {
				if ( digit_char_mapping.get(key).contains(str_lower) ) {
					int number_presses = digit_char_mapping.get(key).indexOf(str_lower) + 1;
					
					if ( !key_presses.equals("") && key_presses.substring(key_presses.length() - 1).equals(key) )
						key_presses += " ";
					
					key_presses += key.repeat(number_presses);
					
					break;
				}
			}
		}
		
		return key_presses;
	}

	/*-----solve-----*/
	public static void solve() {
		String result = "";
		
		Scanner sc = new Scanner(System.in);
		int number_cases = Integer.parseInt(sc.nextLine());
		
		for (int case_number = 1; case_number <= number_cases; case_number++) {
			String message = sc.nextLine();
			String key_presses = translate_T9(message);
			result += String.format("Case #%d: %s\n", case_number, key_presses);
		}
		
		System.out.println(result);
	} // end solve
	
	/*-----main-----*/
	public static void main(String[] args) {
		solve();
	} // end main

} // end class