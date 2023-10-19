% Lists

member(H, [H | _]).
member(X, [_ | T]) :-
	member(X, T).

length([], 0).
length([_ | T], N) :-
	length(T, N1),
	N is N1 + 1.

