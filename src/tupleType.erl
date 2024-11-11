%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Thg 11 2024 10:41 SA
%%%-------------------------------------------------------------------
%% TRONG ERLANG, TUPLE LÀ MỘT CẤU TRÚC DỮ LIỆU CHO PHÉP NHÓM CÁC GIÁ TRỊ LẠI VỚI NHAU THÀNH MỘT THỰC THỂ DUY NHẤT.
%% TUPLE CÓ THỂ CHỨA NHIỀU LOẠI DỮ LIỆU KHÁC NHAU NHƯ SỐ, CHUỖI, DANH SÁCH, HOẶC THẬM CHÍ LÀ CÁC TUPLE KHÁC.
-module(tupleType).
-author("Minh Beta").

-export([start/0]).

start() ->
  %% 1.Cú pháp của Tuple
  %% MyTuple = {value1, value2, value3}.

  Person = {name, "Alice", age, 25, city, "Paris"},
  io:fwrite("Map mới là ~p~n",[Person]),

  %% 2. Truy cập phần tử của Tuple
  %% Erlang không hỗ trợ truy cập phần tử trong tuple trực tiếp bằng chỉ mục,
  %% nhưng bạn có thể sử dụng các hàm từ module erlang để thao tác với tuple.
  %% Sử dụng element/2 để lấy một phần tử trong tuple dựa trên chỉ mục (bắt đầu từ 1).
  Test = {name, "Minh", age, 23},
  Name = element(2, Test),
  io:fwrite("Lấy ra phần tử mới là ~p~n",[Name]),

  %% Sử dụng setelement/3 để thay đổi giá trị của một phần tử trong tuple.
  UpdatedPerson = setelement(4, Test, 26),
  %Lưu ý: Tuple là bất biến, vì vậy setelement/3 sẽ trả về một tuple mới với phần tử đã được thay đổi,
  % mà không làm thay đổi tuple ban đầu.
  io:fwrite("Tuple mới là ~p~n",[UpdatedPerson]),

  %% Chuyển List thành Tuple
  List2 = [1, 2, 3, 4],
  Tuple = list_to_tuple(List2),
  io:fwrite("Tuple mới là ~p~n",[Tuple]).



