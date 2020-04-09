substance("Test1", 12, "Conductor").
substance("Test2", 13, "Semiconductor").
substance("Test3", 12, "Insulator").
substance("Test4", 11, "Insulator").
substance("Test5", 13, "Conductor").

main():-
    aggregate_all(count, query(), Count),
    writeln(Count).
    
query():-
    substance(_, Weight1, Type1),
    substance(_, Weight2, Type2),
    Weight1 == Weight2,
    Type1 \= Type2.

/** <examples>

?- main().

*/ 
 
    
    