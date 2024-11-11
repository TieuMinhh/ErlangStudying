%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Thg 11 2024 04:22 CH
%%%-------------------------------------------------------------------
-module(minh).
-author("Minh Beta").
-include_lib("test.hrl").
-export([start/0, area_of_circle/1, distance/2, speed/1, checkPoint/1, checkSoNguyenTo/1, is_prime/1]).


area_of_circle(Radius) -> ?PI * Radius * Radius.

distance(P1, P2) ->
  Dx = P2#point.x - P1#point.x,
  Dy = P2#point.y - P1#point.y,
  math:sqrt(Dx * Dx + Dy * Dy).

speed(Time) -> 0.5 * ?G * Time * Time.

checkPoint(X) ->
  if
    X < 0 orelse X > ?MAX_POINT -> io:format("Điểm không hợp lệ~n");
    true -> io:format("Điểm của bạn là ~w~n", [X])
  end.

checkSoNguyenTo(X) ->
  if
    X == 1 -> io:format("~p không là số nguyên tố ~n", [X]);
    X == 2 orelse X == 3 orelse X == 5 -> io:format("~p là số nguyên tố ~n", [X]);
    true -> io:format("~p không là số nguyên tố ~n", [X])
  end.

is_prime(X) when X < 2 ->
  false;  % Các số nhỏ hơn 2 không phải là số nguyên tố
is_prime(2) ->
  true;   % Số 2 là số nguyên tố
is_prime(3) ->
  true;   % Số 3 là số nguyên tố
is_prime(X) ->
  is_prime(X, 2).

% Hàm phụ kiểm tra chia hết từ 2 đến căn bậc hai của X
is_prime(X, Divisor) when Divisor * Divisor > X ->
  true;  % Nếu không chia hết cho bất kỳ số nào đến căn bậc hai, X là số nguyên tố
is_prime(X, Divisor) ->
  if
    X rem Divisor == 0 ->
      false; % Nếu chia hết cho bất kỳ Divisor nào, X không phải là số nguyên tố
    true ->
      is_prime(X, Divisor + 1)  % Kiểm tra tiếp với số tiếp theo
  end.


start() ->
  io:format("Diện tích hình tròn có bán kính R là : ~.4f~n", [area_of_circle(3)]),

  P1 = #point{x = 0, y = 0},
  P2 = #point{x = 3, y = 4},
  io:format("Khoảng cách giữa 2 điểm A và B là ~p~n", [distance(P1, P2)]),

  io:format("Vận tốc của xe máy là ~p m/s²~n", [speed(10)]),  %~p : Dùng để hiển thị giá trị của đối số dưới dạng đại diện chuỗi (pretty-print).

  checkPoint(9),

  CheckSNT = is_prime(10),
  case CheckSNT of
    true -> io:format("Là số nguyên tố ~n");
    false -> io:format("Không là số nguyên tố ~n")
  end.
