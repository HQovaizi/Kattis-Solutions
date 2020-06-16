/*
 *	Problem A Real Challenge
 */
 
/*-----read_atom-----*/
read_atom(A) :-
    read_token_codes(Codes),
    (Codes == end_of_file -> A = Codes ; atom_codes(A, Codes)).

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
		%\+ code_type(C0, space), !,
    not(C0=10), !,
    get_code(C0),
    read_token_codes_helper(C).
read_token_codes_helper([]).

/*-----main-----*/
main :-
    read_int(Area),
		Perimeter is sqrt(Area) * 4,
		writeln(Perimeter).

/*-----solver-----*/
solver(0).
solver(CaseNum) :-
	read_string(ACodes),
	read_string(BCodes),
	parseMatches(ACodes, BCodes, Matches),
	codesToString(ACodes, AString),
	codesToString(BCodes, BString),
	displayString(AString),
	displayString(BString),
	displayString(Matches),
	NextCaseNum is CaseNum - 1,
	solver(NextCaseNum).

/*-----parseMatches-----*/
parseMatches([], [], []).
parseMatches([HA|TA], [HB|TB], ['.'|TM]) :-
	HA = HB,
	parseMatches(TA, TB, TM).
parseMatches([_|TA], [_|TB], ['*'|TM]) :-
	parseMatches(TA, TB, TM). 
	
/*-----codesToString-----*/
codesToString([], []).
codesToString([H|T], [H2 | T2]) :-
	char_code(H2, H),
	codesToString(T, T2).

/*-----displayString-----*/	
displayString([]) :-
	write(''), nl.
displayString([H|T]) :-
	write(H),
	displayString(T).