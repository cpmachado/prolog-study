triangle(A, B, C, "equilateral") :-
	valid_triangle(A, B, C),
	A == B,
	B == C.

triangle(A, B, C, "isosceles") :-
	valid_triangle(A, B, C),
	A == B.

triangle(A, B, C, "isosceles") :-
	valid_triangle(A, B, C),
	A == C.

triangle(A, B, C, "isosceles") :-
	valid_triangle(A, B, C),
	B == C.

triangle(A, B, C, "scalene") :-
	valid_triangle(A, B, C),
	A \== B,
	A \== C,
	B \== C.

valid_triangle(A, B, C) :-
	A > 0,
	B > 0,
	C > 0,
	not(A > B + C),
	not(B > A + C),
	not(C > A + B).
