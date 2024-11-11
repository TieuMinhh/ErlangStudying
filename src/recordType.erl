%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Thg 11 2024 11:03 SA
%%%-------------------------------------------------------------------
%% Trong Erlang, record là một cấu trúc dữ liệu có tên gọi, cho phép bạn nhóm các giá trị lại với nhau,
%% tương tự như cấu trúc (struct) trong các ngôn ngữ lập trình khác.
%% Record thường được sử dụng để tạo các đối tượng có nhiều thuộc tính và dễ dàng thao tác,
%% đặc biệt khi bạn cần một cách tổ chức dữ liệu rõ ràng.
-module(recordType).
-author("Minh Beta").

-export([start/0, create_person/3, get_name/1, set_age/2]).

-record(newPerson, {name, age, city}).

create_person(Name, Age, City) ->
  #newPerson{name = Name, age = Age, city = City}.

get_name(Person) ->
  Person#newPerson.name.

set_age(Person, NewAge) ->
  Person#newPerson{age = NewAge}.

start() ->
  Person1 = #newPerson{name = "Alice", age = 25, city = "Paris"},
  io:fwrite("Record mới tạo là ~p~n",[Person1]),

  %% Truy cập các trường
  %% Name = Person1#person.name,  % Trả về "Alice"
  %% Age = Person1#person.age.    % Trả về 25

  %% Sửa đổi các trường
  UpdatedPerson = Person1#newPerson{age = 26},
  io:fwrite("Record mới là ~p~n",[UpdatedPerson]),

  Person = recordType:create_person("Alice", 25, "Paris"),  % Tạo mới record ở module hiện tại
  io:fwrite("Record mới tạo là ~p~n",[Person]),

  GetName = recordType:get_name(Person),  % Lấy ra trường name
  io:fwrite("Lấy ra trường name là : ~p~n",[GetName]),

  SetAge = recordType:set_age(Person,20),  % Ghi đè trường age
  io:fwrite("Ghi đè trường age là : ~p~n",[SetAge]),

  io:fwrite("Record mới là : ~p~n",[Person]),

  io:fwrite("Name là : ~p~n",[Person#newPerson.name]),
  io:fwrite("Age là : ~p~n",[Person#newPerson.age]),
  io:fwrite("City là : ~p~n",[Person#newPerson.city]).







