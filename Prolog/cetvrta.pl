/*
 *	Problem: Cetvrta
 */

/*-----read_int-----*/
read_int(I) :-
	read_token_codes(Codes),
  ( Codes == end_of_file
  -> I = Codes 
  ; number_codes(I, Codes)
  ).

/*-----read_string-----*/
read_string(S) :-
  read_token_codes(S).

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
  %not(C0=10), !,
  get_code(C0),
  read_token_codes_helper(C).
read_token_codes_helper([]).

/*-----main-----*/
main :-
	read_int(X1), read_int(Y1),
	read_int(X2), read_int(Y2),
	read_int(X3), read_int(Y3),
	getLastPoint([X1,X2,X3], [Y1,Y2,Y3], X4, Y4),
	write(X4), write(' '), writeln(Y4).

/*-----getLastPoint-----*/
getLastPoint(LX, LY, X, Y) :-
	isMember(X, LX),
	numOccurences(X, LX, 1),
	isMember(Y, LY),
	numOccurences(Y, LY, 1).

/*-----isMember-----*/
isMember(H, [H|_]).
isMember(H, [_|T]) :-
	isMember(H, T).

/*-----numOccurences-----*/
numOccurences(_, [], 0).
numOccurences(El, [El|T], N) :-
	numOccurences(El, T, NNext),!,
	N is NNext + 1.
numOccurences(El, [_|T], N) :-
	numOccurences(El, T, N).