/*
 *	Problem: Words for Numbers
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
	%\+ code_type(C0, space), !,
 	not(C0=10), !,
  get_code(C0),
  read_token_codes_helper(C).
read_token_codes_helper([]).

/*-----main-----*/
main :-
	solver.

/*-----solver-----*/
solver :-
	peek_code(10),
	get_code(10),
	peek_code(C),
	not(
		(
			C > 31,
			C < 127
		)
	).
solver :-
	read_string(All),
	parseAll(All, [], AllParsed),
	displayFirst(AllParsed),
	solver.

displayFirst([H|T]) :-
	H = [X],
	X > 47, X < 58,
	getNumberC(X, Word),
	write(Word),
	displayParsed(T).
%Teens
displayFirst([H|T]) :-
	H = [49,48],
	write('Ten'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [49,49],
	write('Eleven'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [49,50],
	write('Twelve'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [49,51],
	write('Thirteen'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [49,52],
	write('Fourteen'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [49,53],
	write('Fifteen'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [49,54],
	write('Sixteen'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [49,55],
	write('Seventeen'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [49,56],
	write('Eighteen'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [49,57],
	write('Nineteen'),
	displayParsed(T).
%Tens
displayFirst([H|T]) :-
	H = [50,48],
	write('Twenty'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [51,48],
	write('Thirty'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [52,48],
	write('Forty'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [53,48],
	write('Fifty'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [54,48],
	write('Sixty'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [55,48],
	write('Seventy'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [56,48],
	write('Eighty'),
	displayParsed(T).
displayFirst([H|T]) :-
	H = [57,48],
	write('Ninety'),
	displayParsed(T).

displayFirst([H|T]) :-
	H = [X,Y],
	X > 47, X < 58,
	Y > 47, Y < 58,
	getNumber10sC(X, Word10s),
	getNumber(Y, Word),
	write(Word10s), write(Word),
	displayParsed(T).

displayFirst(AllParsed) :-
	displayParsed(AllParsed).

displayParsed([]) :-
	writeln('').
displayParsed([H|T]) :-
	H = [X],
	X > 47, X < 58,
	getNumber(X, Word),
	write(Word),
	displayParsed(T).
%Teens
displayParsed([H|T]) :-
	H = [49,48],
	write('ten'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [49,49],
	write('eleven'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [49,50],
	write('twelve'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [49,51],
	write('thirteen'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [49,52],
	write('fourteen'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [49,53],
	write('fifteen'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [49,54],
	write('sixteen'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [49,55],
	write('seventeen'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [49,56],
	write('eighteen'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [49,57],
	write('nineteen'),
	displayParsed(T).
%Tens
displayParsed([H|T]) :-
	H = [50,48],
	write('twenty'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [51,48],
	write('thirty'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [52,48],
	write('forty'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [53,48],
	write('fifty'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [54,48],
	write('sixty'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [55,48],
	write('seventy'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [56,48],
	write('eighty'),
	displayParsed(T).
displayParsed([H|T]) :-
	H = [57,48],
	write('ninety'),
	displayParsed(T).

displayParsed([H|T]) :-
	H = [X,Y],
	X > 47, X < 58,
	Y > 47, Y < 58,
	getNumber10s(X, Word10s),
	getNumber(Y, Word),
	write(Word10s), write(Word),
	displayParsed(T).

displayParsed([H|T]) :-
	atom_codes(HString, H),
	write(HString),
	displayParsed(T).

getNumber(48, 'zero').
getNumber(49, 'one').
getNumber(50, 'two').
getNumber(51, 'three').
getNumber(52, 'four').
getNumber(53, 'five').
getNumber(54, 'six').
getNumber(55, 'seven').
getNumber(56, 'eight').
getNumber(57, 'nine').

getNumberC(48, 'Zero').
getNumberC(49, 'One').
getNumberC(50, 'Two').
getNumberC(51, 'Three').
getNumberC(52, 'Four').
getNumberC(53, 'Five').
getNumberC(54, 'Six').
getNumberC(55, 'Seven').
getNumberC(56, 'Eight').
getNumberC(57, 'Nine').

getNumber10s(50, 'twenty-').
getNumber10s(51, 'thirty-').
getNumber10s(52, 'forty-').
getNumber10s(53, 'fifty-').
getNumber10s(54, 'sixty-').
getNumber10s(55, 'seventy-').
getNumber10s(56, 'eighty-').
getNumber10s(57, 'ninety-').

getNumber10sC(50, 'Twenty-').
getNumber10sC(51, 'Thirty-').
getNumber10sC(52, 'Forty-').
getNumber10sC(53, 'Fifty-').
getNumber10sC(54, 'Sixty-').
getNumber10sC(55, 'Seventy-').
getNumber10sC(56, 'Eighty-').
getNumber10sC(57, 'Ninety-').

parseAll([], Temp, [Temp]).
parseAll([H|T], Temp, [Temp,[32]|AllParsed]) :-
	H = 32,
	parseAll(T, [], AllParsed).
parseAll([H|T], Temp, [Temp,[10]|AllParsed]) :-
	H = 10,
	parseAll(T, [], AllParsed).
parseAll([H|T], Temp, AllParsed) :-
	appendLists(Temp, [H], NTemp),
	parseAll(T, NTemp, AllParsed).

appendLists([], L2, L2).
appendLists([H|T], L2, [H|L3]) :-
	appendLists(T, L2, L3).

readAll([10|SCodes]) :-
	peek_code(10),
	get_code(10),
	checkCode(SCodes).
readAll([Code|SCodes]) :-
	get_code(Code),
	readAll(SCodes).

checkCode([]) :-
	peek_code(C),
	not(
		(
			C > 31,
			C < 127
		)
	).
checkCode(SCodes) :-
	readAll(SCodes).