/*
 *	Problem: Beavergnaw
 */
 
/*-----read_int-----*/
read_int(I) :-
    read_token_codes(Codes),
  ( Codes == end_of_file
  -> I = Codes 
  ; number_codes(I, Codes)
  ).

/*-----read_string-----*/
read_string(S2) :-
  read_token_codes(S),
	atom_codes(S2, S).

/*-----read_token_codes-----*/
read_token_codes(end_of_file) :-
  peek_code(end_of_file), !.
read_token_codes(Codes) :-
  peek_code(C),
  \+ code_type(C, space), !,
  read_token_codes_helper(Codes).
read_token_codes(T) :-
  get_char(_), !,
  read_token_codes(T).

/*-----read_token_codes_helper-----*/
read_token_codes_helper([C0|C]) :-
  peek_code(C0),
  \+ code_type(C0, space), !,
  not(C0=10), !,
  get_code(C0),
  read_token_codes_helper(C).
read_token_codes_helper([]).

/*-----main-----*/
main :-
	read_int(D),
	read_int(VE),
	solver(D, VE).

/*-----solver-----*/
solver(0, 0).
solver(D, VE) :-
	LittleV is (12*(D*(D/2)^2 - VE/pi) - D^3)/2,
	cube(LittleV, LittleD),
	format('~6f\n', [LittleD]),
	main.	
	
/*-----cube-----*/
cube(X, Y) :-
	Y is X ** (1/3).
