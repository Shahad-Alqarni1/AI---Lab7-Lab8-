% Basket
basket([coffee, 'Greek yogurt', chocolate, 'Ice cream', 'Eggs']).

% Start rule
start :-
    basket(Items),
    menu(Items).

% Menu
menu(Items) :-
    nl,
    write('=== Shopping List ==='), nl,
    write('d - Display items'), nl,
    write('a - Add item'), nl,
    write('e - Exit'), nl,
    read(Choice),
    action(Choice, Items).

% Display items
action(d, Items) :-
    display(Items),
    menu(Items).

% Add item
action(a, Items) :-
    write('Enter item: '),
    read(Item),
    append(Items, [Item], NewItems),
    menu(NewItems).

% Exit
action(e, _) :-
    write('Exiting the program!'), nl.

% Recursive display
display([]).

display([Head|Tail]) :-
    write(Head), nl,
    display(Tail).
