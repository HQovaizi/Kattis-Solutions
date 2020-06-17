/*
 *	Problem: Zamka
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
	read_int(L),
	read_int(D),
	read_int(X),
	solver(L, D, X, _, N, _, M),
	displayMinMax(N,M).

/*-----displayMinMax-----*/
displayMinMax(N,M) :-
	var(M),
	writeln(N),
	writeln(N).
displayMinMax(N,M) :-
	writeln(N),
	writeln(M).

/*-----solver-----*/
solver(Count, D, _, N, N, M, M) :-
	Count > D.
solver(Count, D, X, TempN, N, TempM, M) :-
	sumDigits(Count, Sum),
	Sum = X,
	var(TempN),
	NextCount is Count + 1,
	solver(NextCount, D, X, Count, N, TempM, M).
solver(Count, D, X, TempN, N, TempM, M) :-
	sumDigits(Count, Sum),
	Sum = X,
	var(TempM),
	NextCount is Count + 1,
	solver(NextCount, D, X, TempN, N, Count, M).
solver(Count, D, X, TempN, N, TempM, M) :-
	sumDigits(Count, Sum),
	Sum = X,
	Count =< TempN,
	NextCount is Count + 1,
	solver(NextCount, D, X, Count, N, TempM, M).
solver(Count, D, X, TempN, N, TempM, M) :-
	sumDigits(Count, Sum),
	Sum = X,
	Count >= TempM,
	NextCount is Count + 1,
	solver(NextCount, D, X, TempN, N, Count, M).
solver(Count, D, X, TempN, N, TempM, M) :-
	NextCount is Count + 1,
	solver(NextCount, D, X, TempN, N, TempM, M).

/*-----sumDigits-----*/
sumDigits(Count, Sum) :-
	number_codes(Count, Codes),
	sumCodes(Codes, Sum).
	
/*-----sumCodes-----*/
sumCodes([], 0).
sumCodes([H|T], Sum) :-
	number_codes(HInt, [H]),
	sumCodes(T, NextSum),
	Sum is NextSum + HInt.