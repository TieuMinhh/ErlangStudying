%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Thg 11 2024 01:25 CH
%%%-------------------------------------------------------------------
-module(exception).
-author("Minh Beta").

%% Cấu trúc try-catch trong Erlang
%% Dưới đây là cú pháp cơ bản của try-catch:
%%
%%   try
%%%     Mã lệnh có thể gây lỗi
%%   catch
%%      Class:Reason -> % Xử lý lỗi ở đây
%%%     lý lỗi tùy thuộc vào loại lỗi
%%   end.

-export([divide/2, start/0, check_positive/1, check_number/0]).

%% Hàm chia, xử lý lỗi khi chia cho 0
divide(A, B) ->
  try
    A / B
  catch
    error:badarith ->
      io:format("Lỗi: Không thể chia cho 0.~n"),
      {error, badarith}
  end.

%% Kiểm tra số âm, số dương và số 0
check_positive(X) ->
  try
    if X < 0 ->
      throw({negative_number, X});
      X > 0 ->
        io:format("~p là số dương.~n", [X]);
      true ->
        io:format("Số 0 không phải là số âm hay số dương.~n")
    end
  catch
    throw:{negative_number, Num} ->
      io:format("Lỗi: ~p là số âm.~n", [Num]),
      {error, negative_number}
  end.

%% Nhập vào số và kiểm tra dương hay âm
check_number() ->
  io:format("Nhập một số: "),
  Input = io:get_line(""),  % Đọc đầu vào từ người dùng
  TrimmedInput = string:trim(Input),  % Cắt bỏ khoảng trắng thừa
  case string:to_integer(TrimmedInput) of
    {ok, Number} ->
      check_positive(Number);
    {error, _} ->
      io:format("Lỗi: Đầu vào không phải là số nguyên hợp lệ.~n"),
      check_number()  % Yêu cầu nhập lại nếu đầu vào không hợp lệ
  end.

%% Hàm start() để kiểm thử các hàm
start() ->
  % Kiểm tra hàm chia
  divide(3, 0),
  % Kiểm tra hàm nhập số và kiểm tra số âm/dương
  check_number().






