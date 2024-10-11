- module(list_utils).
- export([sum_list/1, filter_even/1, find_max/1]).

% Sum List
sum_list(Lst) -> sum_list(Lst, 0).

sum_list([], Acc) -> Acc;
sum_list([H | T], Acc) -> sum_list(T, Acc + H).

% Filter Even
filter_even(Lst) -> filter_even(Lst, []).

filter_even([], Acc) -> Acc;
filter_even([H | T], Acc) ->
    if
        H rem 2 == 0 -> filter_even(T, Acc ++ [H]);
        true -> filter_even(T, Acc)
    end.

% Find Max
find_max(Lst) -> find_max(Lst, -1.0e308).

find_max([], Max) -> Max;
find_max([H | T], Max) ->
    if
        H > Max -> find_max(T, H);
        true -> find_max(T, Max)
    end.