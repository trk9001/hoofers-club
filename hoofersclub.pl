% hoofersclub.pl

% Knowledge base representing the Hoofers Club problem ("Is there a member of
% the Hoofers Club who is a mountain climber but not a skier?"). Written in
% SWI Prolog (8.2.3).


% Members of the Hoofers Club.
hc(tony).
hc(shi_kuo).
hc(ellen).

% Mountain climber vs. skier.
m(X) :- hc(X), dislikes(X, rain), dislikes(X, snow).
s(X) :- hc(X), likes(X, snow), likes(X, rain).

% Ellen's weird obsession with Tony.
dislikes(ellen, Y) :- likes(tony, Y).
likes(ellen, Y) :- dislikes(tony, Y).

% Tony likes H2O.
likes(tony, rain).
likes(tony, snow).
