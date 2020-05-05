Facts
	single numbers(list)

domains
      	file = datafile
	list=integer*

	
predicates
	concatList(list, list, list)
	permutation(list,list)
	bubble(list,list)
	read_file().
	read().
	main().
	write_file().
      
goal

	main.

clauses
	numbers([]).
	
	main:-
		disk("C:\\university\\AI\\AI\\Lab4"),
		read_file(),
		numbers(L),
		bubble(L, LL), assert(numbers(LL)),
		write_file.
		
	write_file:-
		openwrite (datafile, "output.txt"),
		writedevice(datafile), 
		numbers(Nums), write(Nums),
		closefile(datafile).
		
		
	read_file:- 
		openread (datafile, "input.txt"), 
		readdevice (datafile),
		read(), 
		closefile(datafile).

	read:-
		eof(datafile), 
		!.		
	read:-
		not(eof(datafile)),
		readint(Num),
		numbers(Nums), concatList(Nums, [Num], NewNum),
		assert(numbers(NewNum)),
		read.

        	
        concatList([], List2, List2).
	concatList([Head|Tail], List2, [Head|TailResult]):-
		concatList(Tail, List2, TailResult).
		
		
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