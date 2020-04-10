Domains
	int=integer
	list=int*
Predicates
	identical(list, list)
	permutation(list,list)
	bubble(list,list)
	main.
Goal
	main.
Clauses

	main:-
		write("Write first list:"), nl, Readterm(list, L1), 
		write("Write second list:"), nl, Readterm(list, L2), 
		bubble(L1, LL1), bubble(L2, LL2), nl, 
		write("Sorted lists"), nl,
		write(LL1), nl, write(LL2), nl,
		identical(LL1, LL2).

	identical([], []).
	
	identical([X|T], [X|T]):- 
		identical(T, T).
 
	bubble(L, L1) :-
	    	permutation(L, LL), 
	    	!,
	    	bubble(LL, L1). 
	    
	bubble(L, L).

	permutation([X, Y|T], [Y, X|T]) :- 
	    	X > Y,
	    	!. 
	    
	permutation([X|T], [X|T1]) :-
	    	permutation(T, T1).
 
	
