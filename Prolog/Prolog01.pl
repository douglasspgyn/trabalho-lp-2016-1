sentenca(ursula, bonita).
sentenca(norberto, rico).
sentenca(norberto, bonito).
sentenca(berta, rica).
sentenca(berta, forte).
sentenca(pierre, forte).
sentenca(pierre, bonito).
sentenca(bruno, amavel).
sentenca(bruno, forte).

masculino(norberto).
masculino(pierre).
masculino(bruno).

feminino(ursula).
feminino(berta).

homemgosta(X,Y) :- sentenca(Y, bonita),masculino(X),feminino(Y).
homemricofeliz(X) :- sentenca(X, rico),masculino(X).
homemfelizamor(X) :- (bertagosta(X);ursulagosta(X)).
homemfeliz(X) :- homemricofeliz(X);homemfelizamor(X).

mulherfeliz(X) :- homemgosta(Y, X), feminino(X), masculino(Y).

bertagosta(X) :-  homemgosta(X,berta),masculino(X).
ursulagosta(X) :- (homemgosta(X,ursula), masculino(X)), (sentenca(X,rico),sentenca(X,amavel); sentenca(X,bonito),sentenca(X,forte)).
