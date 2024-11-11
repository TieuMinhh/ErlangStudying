%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Thg 11 2024 11:00 SA
%%%-------------------------------------------------------------------
-module(stringType).
-author("Minh Beta").
-import(string,[left/3,right/2,right/3,to_lower/1,to_upper/1,sub_string/3]).
-export([start/0]).

start() ->
  Str1 = "This is a string",
  io:fwrite("~p~n",[Str1]),

  % Hàm left : Trả về chuỗi con từ chuỗi gốc dựa trên phía bên trái của chuỗi và số.
  % Chuỗi mới = chuỗi cũ + số các " . " để đủ số lượng trong tham số thứ 2 (10) của hàm left(Str10,10,$.)
  Str10 = "hello",
  Str2 = left(Str10,10,$.),
  io:fwrite("Chuỗi left : ~p~n",[Str2]),

  % Hàm right : Trả về chuỗi con từ chuỗi gốc dựa trên phía bên phải của chuỗi và số.
  % Chuỗi mới = chuỗi cũ + số các " . " để đủ số lượng trong tham số thứ 2 (10) của hàm right(Str3,10)
  Str3 = "Hello World",
  Str4 = right(Str3,10),
  io:fwrite("Chuỗi right : ~p~n",[Str4]),

  % Hàm right có character : Trả về chuỗi con từ chuỗi gốc dựa trên phía bên phải của chuỗi và số.
  % Chuỗi mới = chuỗi cũ + số các " . " để đủ số lượng trong tham số thứ 2 (10) của hàm right(Str3,10,$)
  Str5 = "hello",
  Str6 = right(Str5,10,$.),
  io:fwrite("Chuỗi right có character : ~p~n",[Str6]),

  % to_lower và to_upper : in hoa và in thường
  Str7 = "HELLO WORLD",
  Str8 = to_lower(Str7),
  io:fwrite("Chuỗi in thường : ~p~n",[Str8]),

  Str9 = "hello world",
  Str11 = to_upper(Str9),
  io:fwrite("Chuỗi in hoa : ~p~n",[Str11]),

  % sub_string : Trả về một chuỗi con của Chuỗi, bắt đầu từ vị trí Bắt đầu đến cuối chuỗi hoặc đến và bao gồm cả vị trí Dừng.
  Str12 = "hello world",
  Str13 = sub_string(Str12,1,5),
  io:fwrite("Chuỗi sub : ~p~n",[Str13]).