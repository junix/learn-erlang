-module(strstr).
-export([sstr/2,matchHere/2]).

sstr(_,"") -> true;
sstr("",_) -> false;
sstr([H|T],[H1|T1]) -> if H == H1 -> matchHere(T,T1) or sstr(T,[H1|T1]); true -> sstr(T,[H1|T1]) end.

matchHere(_,"") -> true;
matchHere("",_) -> false;
matchHere([H|T],[H1|T1]) -> (H =:= H1) and matchHere(T,T1).
