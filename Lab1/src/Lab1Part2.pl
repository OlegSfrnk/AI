book(author1, name1, genre1).
book(author2, name2, genre2).
book(author3, name3, genre3).
book(author1, name4, genre1).
book(author2, name1, genre1).

main():-
    prompt(_, 'Enter the author'),
    read(Author),
    aggregate(count, query(Author), Count),
    write("Count = "), write(Count).

query(Author):-
    book(Author,X,Y),
    writeln(book(Author,X,Y)).

/** <examples>
?- main.
*/ 