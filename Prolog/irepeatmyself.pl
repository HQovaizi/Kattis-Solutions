/*
 *	Problem: I Repeat Myself I Repeat Myself I Repeat
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
    %\+ code_type(C, space), !,
		not( C < 32),
    read_token_codes_helper(Codes).
read_token_codes(T) :-
    get_char(_), !,
    read_token_codes(T).

/*-----read_token_codes_helper-----*/
read_token_codes_helper([C0|C]) :-
    peek_code(C0),
    %\+ code_type(C0, space), !,
		not( C0 < 32),
    get_code(C0),
    read_token_codes_helper(C).
read_token_codes_helper([]).

/*-----main-----*/
main :-
	read_int(Cases),
	solve(Cases).
	
/*-----solve-----*/
solve(0).
solve(Case) :-
	read_string(S),
	copy_term(S,S2),
	
	match(S,S2,String),
	
	%atom_codes(Str, String),
	%writeln(Str),
	
	lenList(String, Len),
	writeln(Len),	
	
	NextCase is Case - 1,
	solve(NextCase).
	
/*-----match-----*/
match([H1|T1], S2, [H1|String]) :-
	allButLast(S2, S2New),
	not( T1 = S2New ),
	match(T1, S2New, String).
match([H1|T1], S2, [H1]) :-
	allButLast(S2, S2New),
	T1 = S2New.
	
/*-----allButLast-----*/
allButLast([_], []).
allButLast([H|T], [H|Next]) :-
	allButLast(T, Next).
	
/*-----atomCodes-----*/
atomCodes([],[]).
atomCodes([HVal|TVal], [HCodes|TCodes]) :-
	atom_codes(HVal, [HCodes]),
	atomCodes(TVal, TCodes).
	
/*-----lenList-----*/
lenList([], 0).
lenList([_|T], Len) :-
	lenList(T, NextLen),
	Len is NextLen + 1.