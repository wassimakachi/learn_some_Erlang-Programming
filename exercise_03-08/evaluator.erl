-module(evaluator).
-export([evaluate/1]).

%% An evaluator, which takes an exp and returns its value

evaluate({num, Num}) -> Num;
evaluate({uniary_minus, A}) -> - evaluate(A);
evaluate({minus, A, B}) -> evaluate(A) - evaluate(B);
evaluate({plus, A, B}) -> evaluate(A) + evaluate(B);
evaluate({multiply, A, B}) -> evaluate(A) * evaluate(B);
evaluate({divide, A, B}) -> evaluate(A) div evaluate(B).
