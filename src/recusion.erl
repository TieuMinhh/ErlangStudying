%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Thg 11 2024 10:41 SA
%%%-------------------------------------------------------------------
-module(recusion).
-author("Minh Beta").
-export([fac/1,start/0]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0 -> N*fac(N-1).

% Hàm bắt đầu
start() ->
  io:format("Nhập một số nguyên: "),
  {ok, [Input | _]} = io:fread("", "~d"),  % Đọc số nguyên từ người dùng
  Y = fac(Input),
  io:format("~w! = ~w~n", [Input, Y]).