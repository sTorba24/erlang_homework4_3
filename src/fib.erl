-module(fib).
-export([fib/1]).

fib(N) when N >= 0 ->
    fib(N, 1, 0).

fib(0, A, _) -> A;
fib(N, A, B) -> fib(N - 1, A + B, A).