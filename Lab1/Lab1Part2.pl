book("Author1", "Name1", "Genre1").
book("Author2", "Name2", "Genre2").
book("Author1", "Name3", "Genre3").
book("Author2", "Name4", "Genre4").
book("Author3", "Name5", "Genre2").

main(Author):-
    aggregate(count, query(Author), Count),
    write("Count = "), write(Count).

query(Author):-
    book(Author,X,Y),
    writeln(book(Author,X,Y)).

/** <examples>

?- main("Author1").
?- main("Author3").
?- main("Author4").

*/ 