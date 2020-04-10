Facts
	single count(integer) 
	single index(integer)
	single rez_str(string)

Predicates
	nondeterm Main()
	nondeterm Start(string)
	nondeterm CheckDot(string)

Goal
	Main().

Clauses
	index(1).
	count(0).
	rez_str("").
	
	Main():-
		Readln(Str), 
		Start(Str),
		rez_str(RezStr),
		write(RezStr), nl.
		
	Start(Str):-
		index(N),
		str_len(Str, L),
		N > L, 
		CheckDot(""),
		!.		

	Start(Str):-
		index(N),
		str_len(Str, L),
		N <= L,
		substring (Str, N, 1, SubStr),
		N1 = N + 1, assert(index(N1)),
		CheckDot(SubStr),
		Start(Str).		
		
	CheckDot(SubStr):-
		SubStr = ".",
		count(N),
		N1 = N + 1, assert(count(N1)).

	CheckDot(SubStr):-
		SubStr <> ".",
		count(N),
		N = 0,
        	rez_str(Str), 
		concat(Str, SubStr, RezStr),		
		assert(count(0)), assert(rez_str(RezStr)).
				
	CheckDot(SubStr):-
		SubStr <> ".",
		count(N),
		N = 1,
                rez_str(Str), 
		concat(Str, ".", RezStr),
		concat(RezStr, SubStr, RezStr1),		
		assert(count(0)), assert(rez_str(RezStr1)).
		
	CheckDot(SubStr):-
		SubStr <> ".",
		count(N),
		N = 2,
        	rez_str(Str), 
		concat(Str, "..", RezStr),
		concat(RezStr, SubStr, RezStr1),		
		assert(count(0)), assert(rez_str(RezStr1)).
		
	CheckDot(SubStr):-
		SubStr <> ".",
		count(N),
		N > 2,
        	rez_str(Str), 
		concat(Str, ".", RezStr),
		concat(RezStr, SubStr, RezStr1),		
		assert(count(0)), assert(rez_str(RezStr1)).		

