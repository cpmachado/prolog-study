% Logic puzzles

% 1. Adam does not live on the top floor.
% 2. Bill does not live on the bottom floor.
% 3. Cora does not live on either the top or the bottom floor.
% 4. Dale lives on a higher floor than does Bill.
% 5. Erin does not live on a floor adjacent to Cora's.
% 6. Cora does not live on a floor adjacent to Bill's.

higher(X, Y, [X | T]) :-
	member(Y, T).
higher(X, Y, [_ | T]) :-
	higher(X, Y, T).

not_adjacent(X, Y, [X, Z | T]) :-
	Z \== Y,
	member(Y, T).
not_adjacent(X, Y, [Y, Z | T]) :-
	Z \== X,
	member(X, T).
not_adjacent(X, Y, [_ | T]) :-
	not_adjacent(X, Y, T).

puzzle(L) :-
	permutation(L, [adam, bill, cora, dale, erin]),
	L = [Top, Floor4, Floor3, Floor2, Bottom],
	adam \== Top,
	bill \== Bottom,
	cora \== Top,
	cora \== Bottom,
	higher(dale, bill, L),
	not_adjacent(erin, cora, L),
	not_adjacent(cora, bill, L).

