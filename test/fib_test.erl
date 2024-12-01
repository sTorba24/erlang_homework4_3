-module(fib_test).
-include_lib("eunit/include/eunit.hrl").
-export([fib_test_/0]).

fib_test_() -> [
?_assert(fib:fib(0) =:= 1),
?_assert(fib:fib(1) =:= 1),
?_assert(fib:fib(2) =:= 2),
?_assert(fib:fib(3) =:= 3),
?_assert(fib:fib(4) =:= 5),
?_assert(fib:fib(5) =:= 8),
?_assertException(error, function_clause, fib:fib(-1)),
?_assert(fib:fib(31) =:= 2178309),
?_assert(fib_test:time_execution_test() =:= true)].

time_execution_test() ->
    {Time, _Result} = timer:tc(fib, fib, [31]),
    Time < 1000000.