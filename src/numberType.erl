%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Thg 11 2024 10:58 SA
%%%-------------------------------------------------------------------
-module(numberType).
-author("Minh Beta").
-export([start/0]).

start() ->
  io:fwrite("~w~n",[1+1]),
  io:fwrite("~w~n",[1.1+1.2]),
  io:fwrite("~f~n",[1.1+1.2]),
  io:fwrite("~e~n",[1.1+1.2]).