-module(area_server0).
-author(junix).
-export([start/0]).


start() ->
    spawn(fun()-> loop() end).


loop() ->
    receive
        {reg,{Len,Width}} ->
            io:format("receive Len = ~p,Width = ~p~n",[Len,Width]),
            io:format("area=~p~n",[Len*Width]),
            loop();
        {cyc,Side} ->
            io:format("receive cyc,Side = ~p~n",[Side]),
            io:format("area=~p~n",[3.14*Side*Side]),
            loop()
     end.
            

