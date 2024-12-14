% Define the 'chatty' fact
chatty(gustavo).
chatty(valeria).

% Define the 'likes' fact
likes(esteban, malena).
likes(malena, esteban).
likes(gustavo, valeria).

% Define the 'pairing' rule
pairing(X, Y) :- likes(X, Y), likes(Y, X); chatty(X); chatty(Y).

% Define the 'seating' rule
searting(X, Y, Z, W, N) :- pairing(X, Y), pairing(Y, Z), pairing(Z, W), pairing(Y, W), pairing(W, N).