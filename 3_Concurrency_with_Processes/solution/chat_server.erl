- module(chat_server).
- export([start_server/0, start_client/1, send_message/2]).

- export([server_loop/1, client_loop/1]).

broadcast(_, _, []) ->
    ok;
broadcast(Source, Message, [H | T]) ->
    if
        H =/= Source -> 
            H ! {Source, H, Message};
        true ->
            ok
    end,

    broadcast(Source, Message, T). 

server_loop(Clients) ->
    receive 
        {Message} ->
            io:format("Message received: ~p~n", [Message]),
            server_loop(Clients);
        {client, Pid} ->
            io:format("Clients: ~w + ~w~n", [Clients, Pid]),
            server_loop(Clients ++ [Pid]);
        {message, Pid, Message} ->
            broadcast(Pid, Message, Clients),
            server_loop(Clients)
    end.

start_server() ->
    Pid = spawn(?MODULE, server_loop, [[]]),
    register(server, Pid),
    Pid.

client_loop(Server_id) ->
    receive 
        {Source_pid, Dest_pid, Message} ->
            io:format("Receive message from ~p to ~p: ~p~n", [Source_pid, Dest_pid, Message]),
            client_loop(Server_id)
    end.

start_client(Server_id) ->
    spawn(fun() ->
        Pid = spawn(?MODULE, client_loop, [Server_id]),
        Server_id ! {client, Pid},
        Pid
    end),
    
    ok.

send_message(Pid, Message) ->
    server ! {message, Pid, Message},
    ok.