%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Thg 11 2024 11:24 SA
%%%-------------------------------------------------------------------
-module(listType).
-author("Minh Beta").
-import(lists,[delete/2,droplast/1,merge/1]).
-export([start/0]).

start() ->
  List1 = [1,2,3,4,5,6,7,8,9],
  io:fwrite("Mảng là : ~w~n",[List1]),

  % Xoá phần tử mong muốn bằng cách truyền giá trị của nó vào hàm delete
  List2 = lists:delete(3, List1),
  io:fwrite("Mảng sau khi xoá là : ~w~n",[List2]),

  % Xoá phần tử cuối bằng cách dùng hàm droplast
  List4 = lists:droplast(List2),
  io:fwrite("Mảng sau khi xoá phần tử cuối là : ~w~n",[List4]),

  List5 = lists:max(List1),
  io:fwrite("Phần tử có giá trị lớn nhất là : ~w~n",[List5]),

  % Gộp các mảng con chưa sắp xếp theo thứ tự
  List6 = [2,3,4,3,9,8,[4,3],[3,10]],
  Test = lists:flatten(List6),
  io:fwrite("Mảng sau khi gộp các mảng con chưa sắp xếp là : ~w~n",[Test]),

  % Gộp các mảng con đã sắp xếp theo thứ tự
  List7 = [2,3,4,[2,3],[3,10]],
  Test2 = lists:flatten(List7),
  io:fwrite("Mảng sau khi gộp các mảng con đã sắp xếp là : ~w~n",[Test2]),

  % Lấy phần tử trong List theo vị trí N tính từ 1
  List8 = [2,3,4,5,6,7,8,9],
  Test3 = lists:nth(3,List8),
  io:fwrite("Phần từ lấy ra là : ~w~n",[Test3]),

  % Đảo ngược mảng
  List9 = [2,3,4,5,9,6,5],
  Test4 = lists:reverse(List9),
  io:fwrite("Mảng sau khi đảo ngược là : ~w~n",[Test4]).

