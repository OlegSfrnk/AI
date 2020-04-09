substance(test1, 12, conductor).
substance(test2, 13, semiconductor).
substance(test3, 12, insulator).
substance(test4, 11, insulator).
substance(test5, 13, conductor).

main():-
    aggregate_all(count, query, Count),
    writeln(Count).
    
query():-
    substance(_, Weight1, Type1),
    substance(_, Weight2, Type2),
    Weight1 == Weight2,
    Type1 \= Type2.

/** <examples>

?- main.

*/ 
 
    
    