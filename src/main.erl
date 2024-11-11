% hello world program
-module(main).  % Truyền vào tên file
%import(io,[fwrite/1]). % Giống với std:: của C++
%-export([while/1,while/2,for/2,add/2, start/0]).
%-export([addBySystemFunction/2,get_input/1, start/0]).
-export([start/0]).


% BIẾN NÀO KHÔNG XÀI THÌ COMMENT ĐI KHÔNG LÀ BÁO LỖI
% start() ->
  % X = 3,                       % Khai báo biến number - giống int của C++
  % P = {john,24,{june,25}} ,   % Khai bảo 1 Tuple - giống obj {} của js
  % L = [1,2,3,4,5],            % Khai báo 1 List - giống array [] của js
  % X < 5                       % Khai báo kiểu boolean - giống boolean cửa js

  % Bin1 = <<10,20>>,           % Khai báo kiểu Bit String
  % X = binary_to_list(Bin1),   % Convert bit string thành List

  % Operator ( Toán tử ) : Giống js

  %io:fwrite("~w",[L]).



start() ->
  Test = function:add(5, 3),
  io:format("Tổng là: ~w~n", [Test]),
  Test2 = function:subtract(5, 3),
  io:format("Hiệu là: ~w~n", [Test2]),
  Test3 = function:nhan(3,4),
  io:format("Nhân là: ~w~n", [Test3]),
  Test4 = function:device(50,4),
  io:format("Chia là: ~w~n", [Test4]),

  function:addBySystemFunction(),

  io:fwrite(loop:for(5,0)).

%%  X = [1,2,3,4],
%%  loop:while(X).

%%  %% Nhận đầu vào từ người dùng
%%  X = function:get_input("Nhập vào X: "),
%%  Y = function:get_input("Nhập vào Y: "),
%%
%%  %% Gọi hàm addBySystemFunction2 với các giá trị nhập vào
%%  function:addBySystemFunction2(X, Y).


