female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

male(abraham).
male(clancy).
male(herb).
male(homer).
male(bart).

parent(abraham, herb).
parent(mona, herb).
parent(abraham, homer).
parent(mona, homer).
parent(homer, bart).
parent(marge, bart).
parent(homer, lisa).
parent(marge, lisa).
parent(homer, maggie).
parent(marge, maggie).
parent(clancy, marge).
parent(jackie, marge).
parent(clancy, patty).
parent(jackie, patty).
parent(clancy, selma).
parent(jackie, selma).
parent(selma, ling).

father(X, Y) :- parent(X, Y), male(X).

mother(X, Y) :- parent(X, Y), female(X).

son(X, Y) :- parent(Y, X), male(X).

daughter(X, Y) :- parent(Y, X), female(X).

sister(X, Y) :- parent(P, X), parent(P, Y), female(X), X \= Y.

brother(X, Y) :- parent(P, X), parent(P, Y), male(X), X \= Y.

grandfather(X, Z) :- parent(X, Y), parent(Y, Z), male(X).

aunt(X, Y) :- parent(P, Y), sister(X, P).

uncle(X, Y) :- parent(P, Y), brother(X, P).

cousin(X, Y) :- parent(P, X), parent(Q, Y), sibling(P, Q), X \= Y.

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

ancestor(X, Z) :- parent(X, Z).
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z).
