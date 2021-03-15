abs(X, Y) :- (X < 0 
              -> Y is X * -1
              ; Y = X).

sign(X, Y) :- (X < 0 
               -> Y is -1 
               ; 
               X == 0
               -> Y is 0
               ; Y is 1).

factorial(0, 1).
factorial(1, 1).
factorial(X, Y) :- (X2 is X-1,
                    factorial(X2, Y2),
                    Y is X * Y2).

fib(0, 0).
fib(1, 1).
fib(2, 1).
fib(X, Y) :- (X1 is X-1,
              X2 is X-2,
              fib(X1, Y1),
              fib(X2, Y2),
              Y is Y1 + Y2).

