%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Thg 11 2024 01:17 CH
%%%-------------------------------------------------------------------
%% Trong Erlang, macros là một cơ chế mạnh mẽ để định nghĩa các đoạn mã có thể tái sử dụng hoặc các giá trị cố định trong mã nguồn.
%% Macros trong Erlang được định nghĩa bằng cách sử dụng từ khóa -define và có thể được sử dụng giống như hằng số
%% hoặc đoạn mã cần chèn vào trong các phần khác của chương trình.
-module(marcosType).
-author("Minh Beta").

-export([start/0, calculate_area/1,print_mode/0]).

% Định nghĩa một macro          GIỐNG CONST TRONG JS
-define(PI, 3.1416).
-define(SQUARE(X), (X * X)).

% Hàm tính diện tích hình tròn với bán kính r
calculate_area(Radius) ->
  Area = ?PI * ?SQUARE(Radius),
  io:format("The area is ~f~n", [Area]).

% Định nghĩa một số macro
-ifdef(development).
% Nếu ở chế độ phát triển, ta dùng chế độ debug
-define(MODE, "Development Mode - Debug Enabled").
-else.
% Nếu không phải chế độ phát triển (ví dụ ở chế độ production)
-define(MODE, "Production Mode - Debug Disabled").
-endif.

% Hàm in ra chế độ đang sử dụng
print_mode() ->
  io:format("Current mode: ~s~n", [?MODE]).

% Hàm start để kiểm tra
start() ->
  % Gọi hàm tính diện tích với bán kính là 5
  calculate_area(5),
  print_mode().
