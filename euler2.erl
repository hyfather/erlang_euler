% Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
%
% 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
%
% By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

-module(euler2).
-export([filter_even_values/1, fibonacci/4, solution/0]).

filter_even_values(A) ->
    if
        (A rem 2) == 0 ->
            A;
        true ->
            0
    end.

fibonacci(A, B, Max, Lst) ->
    if
        (A + B) > Max ->
            Lst;
        true ->
            fibonacci(B, (A + B), Max, lists:append(Lst, [(A + B)]))
    end.

solution() ->
    lists:sum(lists:map(fun filter_even_values/1, fibonacci(0, 1, 4000000, []))).

% Solution: 4613732
