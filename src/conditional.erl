%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Thg 11 2024 03:02 CH
%%%-------------------------------------------------------------------
-module(conditional).
-author("Minh Beta").

-export([start/0, check_sign/1, check_number/1, is_even_or_odd/1, check_list/2, convert/1]).

%%Lưu ý: if trong Erlang không có từ khóa else.
%%Nếu bạn cần điều kiện mặc định, hãy sử dụng true như một điều kiện cuối cùng.
check_number(X) ->
  if
    X > 0 -> io:format("X là số dương~n");
    X < 0 -> io:format("X là số âm~n");
    true -> io:format("X là số 0~n")  % Điều kiện mặc định
  end.

%% case trong Erlang cho phép thực hiện pattern matching và kiểm tra các trường hợp khác nhau của một giá trị.
%% Đây là một cách phổ biến và linh hoạt hơn if, vì case có thể xử lý các kiểu dữ liệu và cấu trúc phức tạp.

check_sign(Number) ->
  case Number of
    N when N > 0 -> io:format("N là số dương~n");
    N when N < 0 -> io:format("N là số âm~n");
    0 -> io:format("Số 0~n")
  end.

%% 3. cond (Cách kết hợp case và pattern matching)
%% Mặc dù Erlang không có cú pháp cond riêng biệt như một số ngôn ngữ khác, bạn có thể kết hợp case và pattern matching để đạt được điều kiện phức tạp. Cách này có thể đặc biệt hữu ích khi kiểm tra các điều kiện logic với nhiều giá trị khác nhau.
is_even_or_odd(N) ->
  case N rem 2 of
    0 -> io:format("Số chẵn~n");
    1 -> io:format("Số lẻ~n")
  end.


%% case conditional-expression of
%% Pattern1 -> expression1, expression2, .. ;,
%% Pattern2 -> expression1, expression2, .. ;
%%... ;
%% Patternn -> expression1, expression2, ..
%% end
check_list(Y,List) ->
  case lists:member(Y, List) of
    true -> io:fwrite("Có");
    false -> {error, io:fwrite("Không có")}
  end.

convert(Day) ->
  case Day of
    monday -> 1;
    tuesday -> 2;
    wednesday -> 3;
    thursday -> 4;
    friday -> 5;
    saturday -> 6;
    sunday -> 7;
    _Other -> {error, unknown_day}
  end.

start() ->
  check_number(-5),
  check_sign(-5),
  is_even_or_odd(8),
  List = [bar, foo, baz],
  check_list(foo,List),  +
  convert(monday).



