/*
 *	Problem: datum
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
	read_int(Day),
	read_int(Month),

	A is 2 + Day,
	
	MonthKeyValue = [
		month(1,1),
		month(2,4),
		month(3,4),
		month(4,0),
		month(5,2),
		month(6,5),
		month(7,0),
		month(8,3),
		month(9,6),
		month(10,1),
		month(11,4),
		month(12,6)		
	],
	
	isMember(month(Month, Key), MonthKeyValue),
	
	B is A + Key,
	
	C is B + 6,
	
	D is C + 9,
	
	AnsNum is D mod 7,
	
	DayWeek = [
		day(1, 'Sunday'),
		day(2, 'Monday'),
		day(3, 'Tuesday'),
		day(4, 'Wednesday'),
		day(5, 'Thursday'),
		day(6, 'Friday'),
		day(0, 'Saturday')
	],
	
	isMember(day(AnsNum,AnsDay), DayWeek),
	writeln(AnsDay).
	
/*-----isMember-----*/
isMember(H, [H|_]).
isMember(H, [X|T]) :-
	not( H = X ),
	isMember(H, T).