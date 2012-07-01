-module(euler1).
-export([filter_multiples_of_3_and_5/1, add_them_up/2, solution/0]).

filter_multiples_of_3_and_5(A) ->
    if
        (A rem 3) == 0 ->
            A;
        (A rem 5) == 0 ->
            A;
        true ->
            0
    end.

add_them_up(A, Sum) ->
    A + Sum.

solution() ->
    lists:foldl(fun add_them_up/2,
                0,
                lists:map(fun filter_multiples_of_3_and_5/1,
                          lists:seq(0, 999)
                         )
               ).

% Solution: 233168
