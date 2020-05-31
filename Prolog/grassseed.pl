/*
 *	Problem: Grass Seed Inc.
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
	read_int(Cost),
	read_int(NumLawns),
	solver(NumLawns, SumAreas),
	TotalCost is Cost * SumAreas,
	format('~8f\n', [TotalCost]).
	
/*-----solver(+NumLawns, -SumAreas)-----*/
solver(0, 0).

solver(CurrLawn, Sum) :-
	read_int(W),
	read_int(L),
	
	NextLawn is CurrLawn - 1,
	solver(NextLawn, NextSum),
	
	Area is L*W,
	Sum is NextSum + Area.