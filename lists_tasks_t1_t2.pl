% Lab8
% Task 1
% Deleting all occurrences of X from the list
deleteElement(_, [], []).

% If the head matches X
deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).

% If the head does not match X
deleteElement(X, [Head|Tail], [Head|Result]) :-
    X \= Head,
    deleteElement(X, Tail, Result).

% Task 2
% Adding X at the end the list
add_at_the_end(X, [], [X]).

add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).

