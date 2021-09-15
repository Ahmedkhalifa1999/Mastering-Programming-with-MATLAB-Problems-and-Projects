function fh = poly_fun(p)
    if length(p) == 1
        fh = @(x) p(1);
    else
        fh2 = poly_fun(p(1:end-1));
        fh = @(x) p(end).*(x.^(length(p)-1)) + fh2(x);
end

%Non-recursive solution (Instructor's)
function fh = poly_fun(p)
    function polynomial = poly(x)
        polynomial = sum(p .* x.^(0 : length(p)-1));
    end 
    fh = @poly;
end