/*
 *	Problem: Eligibility
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
				
read_token_codes_helper([C0|C]) :-
	peek_code(C0),
	%\+ code_type(C0, space), !,
	not(C0=10), !,
	get_code(C0),
	read_token_codes_helper(C).
read_token_codes_helper([]).

/*-----main-----*/
main :-
	read_int(NumCases),
	solver(NumCases).
		
/*-----solver-----*/
solver(0).
solver(CaseNum) :-
	read_string(Case),
	codesToString(Case, CaseString),
	parseAllStrings(CaseString, CaseParsed),
	checkEligibility(CaseParsed),
	NextCaseNum is CaseNum - 1,
	solver(NextCaseNum).

/*-----codesToString-----*/
codesToString([], []).
codesToString([HC|TC], [HS|TS]) :-
	char_code(HS, HC),
	codesToString(TC, TS).
	
/*-----parseAllStrings-----*/
parseAllStrings([], []).
parseAllStrings(CaseString, [Info | CaseParsed]) :-
	parseString(CaseString, CaseStringRem, Info),
	parseAllStrings(CaseStringRem, CaseParsed).
	
/*-----parseString-----*/
parseString([], _, []).
parseString([H | TString], StringRem, [H | TTemp]) :-
	not(H = ' '),
	parseString(TString, StringRem, TTemp).
parseString([_ | TString], TString, []).

/*-----checkEligibility-----*/
checkEligibility([Name, Date1, _, _]) :-
	Date1 = [Th,H,T,O,_,_,_,_,_,_],
	atom_number(Th, ThNum),
	atom_number(H, HNum),
	atom_number(T, TNum),
	atom_number(O, ONum),
	Year is ThNum*1000 + HNum*100 + TNum*10 + ONum,
	Year >= 2010,
	display(Name), writeln(' eligible').
checkEligibility([Name, _, Date2, _]) :-
	Date2 = [Th,H,T,O,_,_,_,_,_,_],
	atom_number(Th, ThNum),
	atom_number(H, HNum),
	atom_number(T, TNum),
	atom_number(O, ONum),
	Year is ThNum*1000 + HNum*100 + TNum*10 + ONum,
	Year >= 1991,
	display(Name), writeln(' eligible').
checkEligibility([Name, _, _, Courses]) :-
	getCourses(Courses, CoursesNum),
	CoursesNum >= 41,
	display(Name), writeln(' ineligible').
checkEligibility([Name, _, _, _]) :-
	display(Name), writeln(' coach petitions').
	
/*-----display-----*/
display([]).
display([H|T]) :-
	write(H),
	display(T).
	
/*-----getCourses-----*/
getCourses([], 0).
getCourses([H|T], CoursesNum) :-
	atom_number(H, HNum),
	lenList([H|T], Len),
	LenLessOne is Len - 1,
	getCourses(T, NextCoursesNum),
	CoursesNum is HNum*10^LenLessOne + NextCoursesNum.

/*-----lenList-----*/
lenList([], 0).
lenList([_|T], Len) :-
	lenList(T, NextLen),
	Len is NextLen + 1.