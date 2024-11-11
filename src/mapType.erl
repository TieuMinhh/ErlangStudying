%%%-------------------------------------------------------------------
%%% @author Minh Beta
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Thg 11 2024 09:48 SA
%%%-------------------------------------------------------------------
%% TRONG ERLANG, MAPS LÀ MỘT KIỂU DỮ LIỆU CHO PHÉP LƯU TRỮ CÁC CẶP GIÁ TRỊ KHÓA–GIÁ TRỊ (KEY-VALUE)
%% TỰ NHƯ CÁC CẤU TRÚC DỮ LIỆU MAP TRONG CÁC NGÔN NGỮ LẬP TRÌNH KHÁC.
-module(mapType).
-author("Minh Beta").
-export([start/0]).

start() ->
  %% Cú pháp của Map :
  %% MyMap = #{key1 => value1, key2 => value2}.

  M1 = #{name=>john,age=>25},  % Khai báo kiểu Map
  io:fwrite("~w~n",[map_size(M1)]),

  %% 1. from_list/1
  %% Mô tả: Chuyển một danh sách cặp khóa–giá trị thành map.
  %%  pháp: maps:from_list(List)
  List1 = [{name, "Alice"}, {age, 25}, {city, "Paris"}],
  MyMap = maps:from_list(List1),
  io:format("Map sau khi được chuyển là ~p~n",[MyMap]),
  % Kết quả: MyMap = #{name => "Alice", age => 25, city => "Paris"}.

  %% 2. find/2
  %% Mô tả: Tìm kiếm một khóa trong map. Trả về {ok, Value} nếu khóa tồn tại và {error, not_found} nếu không.
  %% Cú pháp: maps:find(Key, Map).
  MyMap2 = #{name => "Alice", age => 25},
  io:fwrite("Kết quả của find: ~p~n ",[maps:find(name, MyMap2)]),  % Trả về: {ok, "Alice"}
  io:fwrite("Kết quả của find: ~w~n ",[maps:find(city, MyMap2)]),  % Trả về: {error, not_found}

  %%  3. get/2
  %%  Mô tả: Lấy giá trị của một khóa trong map. Nếu khóa không tồn tại, sẽ gây lỗi.
  %%  Cú pháp: maps:get(Key, Map).
  List2 = [{name, "Alice"}, {age, 25}, {city, "Paris"}],
  MyMap3 = maps:from_list(List2),
  Name = maps:get(name, MyMap3),
  io:fwrite("Kết quả của get là : ~p~n ",[Name]), % Trả về: "Alice"

  %%  4. is_key/2
  %%  Mô tả: Kiểm tra xem một khóa có tồn tại trong map không.
  %%  Cú pháp: maps:is_key(Key, Map).
  io:fwrite("Kết quả của is_key là : ~p~n ",[maps:is_key(name, MyMap3)]),  % Trả về: true
  io:fwrite("Kết quả của is_key là : ~p~n ",[maps:is_key(no, MyMap3)]), % Trả về: false

  %%  5. keys/1
  %%  Mô tả: Lấy tất cả các khóa từ map.
  %%  Cú pháp: maps:keys(Map).
  MyMap3 = #{name => "Alice", age => 25, city => "Paris"},
  io:fwrite("Kết quả của lấy key là : ~p~n ",[maps:keys(MyMap3)]),  % Trả về: [name, age, city]

  %% 8. values/1
  %% Mô tả: Lấy tất cả các giá trị từ map.
  %% Cú pháp: maps:values(Map).
  MyMap4 = #{name => "Alice", age => 25, city => "Paris"},
  io:fwrite("Kết quả của lấy value là : ~p~n ",[maps:values(MyMap4)]), % Trả về: ["Alice", 25, "Paris"]

  %% 6. merge/2
  %% Mô tả: Kết hợp hai map thành một map.
  %% Cú pháp: maps:merge(Map1, Map2).
  Map5 = #{name => "Alice", age => 25},
  Map6 = #{city => "Paris", age => 26},
  io:fwrite("Kết quả của merge là : ~p~n ",[maps:merge(Map5, Map6)]),
  % Kết quả: MergedMap = #{name => "Alice", age => 26, city => "Paris"}.\

  %% 7. put/3
  %% Mô tả: Thêm hoặc cập nhật một cặp khóa–giá trị trong map.
  %% Cú pháp: maps:put(Key, Value, Map).
  MyMap7 = #{name => "Alice", age => 25},
  UpdatedMap = maps:put(city, "Ha Noi", MyMap7),
  io:fwrite("Kết quả của put là : ~p~n ",[UpdatedMap]),
  % Kết quả: UpdatedMap = #{name => "Alice", age => 25, city => "Paris"}.

  %% 9. remove/2
  %% Mô tả: Xóa một cặp khóa–giá trị khỏi map.
  %% Cú pháp: maps:remove(Key, Map).
  MyMap = #{name => "Alice", age => 25, city => "Paris"},
  MapWithoutAge = maps:remove(age, MyMap),
  io:fwrite("Kết quả của remove là : ~p~n ",[MapWithoutAge]).
  % Kết quả: MapWithoutAge = #{name => "Alice", city => "Paris"}.