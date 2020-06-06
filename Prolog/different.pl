/*
 *	Problem: A Different Problem
 */

/*----------read_int----------*/
read_int(I) :-
	read_token_codes(Codes),
  ( Codes == end_of_file
  -> I = Codes 
  ; number_codes(I, Codes)
  ).

/*----------read_string----------*/
read_string(S) :-
  read_token_codes(S).

/*----------read_token_codes----------*/
read_token_codes(end_of_file) :-
  peek_code(end_of_file), !.
read_token_codes(Codes) :-
  peek_code(C),
  \+ code_type(C, space), !,
  read_token_codes_helper(Codes).
read_token_codes(T) :-
  get_char(_), !,
  read_token_codes(T).

/*----------read_token_codes_helper----------*/
read_token_codes_helper([C0|C]) :-
  peek_code(C0),
	\+ code_type(C0, space), !,
  %not(C0=10), !,
  get_code(C0),
  read_token_codes_helper(C).
read_token_codes_helper([]).

/*----------main----------*/
main :-
	peek_code(10),
	get_code(_),
	peek_code(Code),
	not(
		(
			Code > 47,
			Code < 58
		)
	).
main :-
	read_int(A),
	read_int(B),
	Diff is abs(A - B),
	format("~a~n", [Diff]),
	main.