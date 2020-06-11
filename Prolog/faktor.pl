/*
 *	Problem: Facktor
 */

/*-----read_string-----*/
read_string(S) :-
	read_token_codes(S).

/*-----read_int-----*/
read_int(I) :-
	read_token_codes(Codes),
	(Codes == end_of_file -> I = Codes ; number_codes(I, Codes)).

/*-----read_atom-----*/
read_atom(A) :-
	read_token_codes(Codes),
	(Codes == end_of_file -> A = Codes ; atom_codes(A, Codes)).

% Internal predicate for getting the next token
/*-----read_token_codes-----*/
read_token_codes(end_of_file) :-
	peek_code(end_of_file), !.
read_token_codes(Codes) :-
	peek_code(C),
	\+ code_type(C, space), !,
	%not( C < 32),
	read_token_codes_helper(Codes).
read_token_codes(T) :-
	get_char(_), !,
	read_token_codes(T).
	
/*-----read_token_codes_helper-----*/
read_token_codes_helper([C0|C]) :-
	peek_code(C0),
	\+ code_type(C0, space), !,
	%not( C0 < 32),		
	get_code(C0),
	read_token_codes_helper(C).
read_token_codes_helper([]).

/*-----main-----*/
main :-
	read_int(A),
	read_int(B),
	solve(A,B, Ans),
	writeln(Ans).
	
/*-----solve-----*/
solve(A,B,Ans) :-
	NewB is B - 1,
	Ans is (A * NewB) + 1.