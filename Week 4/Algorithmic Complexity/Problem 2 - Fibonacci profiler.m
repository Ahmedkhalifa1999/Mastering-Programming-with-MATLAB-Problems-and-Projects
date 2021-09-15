function [f trace] = fibo_trace(n, t)
    if n <= 2
        f = 1;
        trace = [t n];
    else
        [f1 t1] = fibo_trace(n-2, [t n]);
        [f2 trace] = fibo_trace(n-1, t1);
        f = f1 + f2;
    end
end