%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Thg 11 2024 04:13 CH
%%%-------------------------------------------------------------------
-module(loop).
-author("Minh Beta").
-author("Minh Beta").
-export([for/2, while/1]).

% VÒNG LẶP FOR
for(0,_) ->
  [];

for(N,Term) when N > 0 ->
  io:fwrite("Hello~n"),
  [Term|for(N-1,Term)].


% VÒNG LẶP WHILE
while(L) -> while(L,0).
while([], Acc) -> Acc;

while([_|T], Acc) ->
  io:fwrite("~w~n",[Acc]),
  while(T,Acc+1).

