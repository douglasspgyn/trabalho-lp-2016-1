pais(ana,eva).
pais(ivo,eva).
pais(bia,rai).
pais(gil,rai).
pais(bia,clo).
pais(gil,clo).
pais(bia,ary).
pais(gil,ary).
pais(eva,noe).
pais(rai,noe).
pais(lia,gal).
pais(ary,gal).

casal(ana, ivo).
casal(bia, gil).
casal(eva, rai).
casal(ary, lia).
casal(ivo, ana).
casal(gil, bia).
casal(rai, eva).
casal(lia, ary).


mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).

homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).

pai(X,Y) :- homem(X), pais(X,Y).
mae(X,Y) :- mulher(X), pais(X,Y).

gerou(X,Y) :-  mae(X,Y);pai(X,Y).

filho(X,Y) :- homem(Y), gerou(X,Y).
filha(X,Y) :- mulher(Y), gerou(X,Y).

irmao(X,Y) :-  homem(Y), pai(Z,X), pai(Z,Y), mae(W,X), mae(W,Y), X\=Y.
irma(X,Y) :-  mulher(Y), pai(Z,X), pai(Z,Y), mae(W,X), mae(W,Y), X\=Y.

tio(X,Y) :- pai(Z, X), irmao(Z, Y); mae(W,X), irmao(W,Y).
tia(X,Y) :- pai(Z, X), irma(Z, Y); mae(W,X), irma(W,Y).

sobrinho(X,Y) :-  irmao(Z, X), filho(Z, Y); irma(W,X), filho(W,Y).
sobrinha(X,Y) :-  irmao(Z, X), filha(Z, Y); irma(W,X), filha(W,Y).

primo(X,Y) :- tio(X,Z), filho(Z, Y); tia(X,W), filho(W,Y).
prima(X,Y) :- tio(X,Z), filha(Z, Y); tia(X,W), filha(W,Y).

avô(X,Y) :- pai(Z,X), pai(Y,Z); mae(W,X), pai(Y,W).
avó(X,Y) :- pai(Z,X), mae(Y,Z); mae(W,X), mae(Y,W).

cunhado(X,Y) :- homem(Y), casal(X, Z), irmao(Z, Y); homem(Y), irmao(X, W), casal(W,Y); homem(Y), irma(X, K), casal(K,Y).
cunhada(X,Y) :- mulher(Y), casal(X, Z), irma(Z,Y); mulher(Y), irmao(X, W), casal(W,Y); mulher(Y), irma(X, K), casal(K,Y).
