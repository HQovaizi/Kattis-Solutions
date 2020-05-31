/*
 *	Problem: WERTYU
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
	read_string(SCodes),
	Mapping = [
							%First row
							term(61,45),term(45,48),term(48,57),term(57,56),
							term(56,55),term(55,54),term(54,53),term(53,52),
							term(52,51),term(51,50),term(50,49),term(49,96),
							%Second row
							term(92,93),term(93,91),term(91,80),term(80,79),
							term(79,73),term(73,85),term(85,89),term(89,84),
							term(84,82),term(82,69),term(69,87),term(87,81),
							%Third row
							term(39,59),
							term(59,76),term(76,75),term(75,74),term(74,72),
							term(72,71),term(71,70),term(70,68),
							term(68,83),term(83,65),
							%Fourth row
							term(47,46),term(46,44),term(44,77),term(77,78),
							term(78,66),term(66,86),term(86,67),term(67,88),
							term(88,90),
							%Fifth row
							term(32,32),
							%Else
							term(X,X)
						],
	translate(SCodes, Mapping, STrans),
	atom_codes(STransString, STrans),
	writeln(STransString),
	solver.

/*-----translate-----*/
translate([], _, []).
translate([HCodes|TCodes], Mapping, [TransCode|STrans]) :-
	isMember(term(HCodes, TransCode), Mapping),
	translate(TCodes, Mapping, STrans).
translate([_|TCodes], Mapping, STrans) :-
	translate(TCodes, Mapping, STrans).
	
/*-----isMember-----*/
isMember(H, [H|_]).
isMember(H, [_|T]) :-
	isMember(H, T).