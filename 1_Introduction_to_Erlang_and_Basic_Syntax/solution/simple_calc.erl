- module(simple_calc).
- export([main/0, eval/3]).

eval(Num1, Op, Num2) when is_integer(Num1), is_integer(Num2) ->
    case Op of
        "+" -> io:format("~p~n", [Num1 + Num2]);
        "-" -> io:format("~p~n", [Num1 - Num2]);
        "*" -> io:format("~p~n", [Num1 * Num2]);
        "/" ->  
            if  
                Num2 == 0 -> io:format("Division by zero is not allowed~n");
                true -> io:format("~p~n", [Num1 / Num2])
            end;
        _ -> io:format("Invalid operator~n")
    end;
eval(_, _, _) ->
    io:format("Invalid number~n").

main() ->
    Input = io:get_line("Expression: "),

    [Num1_str, Op, Num2_str] =  string:tokens(string:trim(Input), " "),

    {Num1, _} = string:to_integer(Num1_str),
    {Num2, _} = string:to_integer(Num2_str),

    eval(Num1, Op, Num2).