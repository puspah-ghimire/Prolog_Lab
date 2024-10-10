parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
female(pam).
female(liz).
female(pat).
female(ann).
male(bob).
male(tom).
male(jim).
offspring(Y, X):- parent(X, Y).
mother(X, Y):- parent(X, Y), female(X).
grandparent(X, Y):- parent(X, Z), parent(Z, Y).
sister(X, Y):- parent(Z, X), parent(Z, Y), female(X).

