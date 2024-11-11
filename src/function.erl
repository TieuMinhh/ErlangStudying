%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Thg 11 2024 03:42 CH
%%%-------------------------------------------------------------------
-module(function).
-author("Minh Beta").
-export([add/2, subtract/2, sum_to_n/2, addBySystemFunction/0, nhan/2, device/2]).

add(X,Y) ->
  X + Y.

subtract(X,Y) ->
  X - Y.

nhan(X,Y) ->
  X*Y.

device(X,Y) ->
  X/Y.

% HÀM ĐỆ QUY CỘNG CÁC SỐ TỪ N ĐẾN 1
sum_to_n(0, Acc) -> Acc;
sum_to_n(N, Acc) -> sum_to_n(N - 1, Acc + N).

% DÙNG HÀM TÍNH TỔNG CÓ SẴN TRONG ERLANG
addBySystemFunction() ->
List = lists:seq(1, 10),
Result = lists:foldl(fun(X, Acc) -> X + Acc end, 0, List),
io:format("Sum from 1 to 10: ~w\n", [Result]).

%%% DÙNG HÀM TÍNH TỔNG CÓ SẴN TRONG ERLANG
%%% TÍNH TỔNG TỪ X ĐẾN Y
%% addBySystemFunction2(X, Y) ->
%%  List = lists:seq(X, Y),  % Tạo danh sách các số từ X đến Y
%%  Result = lists:foldl(fun(A, Acc) -> A + Acc end, 0, List),  % Tính tổng
%% io:fwrite("Tổng từ ~w đến ~w: ~w\n", [X, Y, Result]).  % In kết quả
%%
%%%% Nhận đầu vào từ người dùng
%% get_input(Prompt) ->
%%  io:format("~s", [Prompt]),  % In ra prompt để yêu cầu nhập
%%  {ok, Input} = io:get_line(""),  % Nhận đầu vào từ người dùng
%% InputTrimmed = string:trim(Input),  % Trim khoảng trắng
%%  case string:to_integer(InputTrimmed) of
%%    {ok, Number} -> Number;  % Trả về số nếu chuyển đổi thành công
%%   _ ->  % Nếu không thành công
%%      io:format("Giá trị không hợp lệ, vui lòng nhập một số nguyên.~n"),
%%      get_input(Prompt)  % Gọi lại để nhận đầu vào hợp lệ
%%  end.

