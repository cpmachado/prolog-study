% Questions
editor(zenspider, emacs).
editor(drbrain, vim).
editor(phiggins, vim).
editor(tenderlove, vim).
keyboard(zenspider, dvorak).
keyboard(drbrain, dvorak).
keyboard(phiggins, qwerty).
keyboard(tenderlove, qwerty).

pair(Person1, Person2) :-
	editor(Person1, Editor),
	editor(Person2, Editor),
	Person1 @> Person2.

pair(P1, P2) :-
	keyboard(P1, Keyboard),
	keyboard(P2, Keyboard),
	P1 @> P2.

super_pair(P1, P2) :-
	editor(P1, Editor),
	editor(P2, Editor),
	keyboard(P1, Keyboard),
	keyboard(P2, Keyboard),
	P1 @> P2.
