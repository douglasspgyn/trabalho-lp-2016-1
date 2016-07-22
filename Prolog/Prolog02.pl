estrada(a,b,25).
estrada(a,d,23).
estrada(b,c,19).
estrada(b,e,32).
estrada(c,d,14).
estrada(c,f,28).
estrada(d,f,30).
estrada(e,f,26).

dist(A,B,D) :- estrada(A,B,D).
dist(A,B,D) :- estrada(A,Z,D1), estrada(Z,B,D2), D is D1+D2.

dist(A, B, D, [A, B]) :- estrada(A, B, D).
dist(A, B, D, [A|E]) :- estrada(A, F, D1), dist(F, B, D2, E), D is D1+D2.
