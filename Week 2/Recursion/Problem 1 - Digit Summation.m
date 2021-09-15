function sum = digit_sum(n)
    if n == 0
        sum = n;
    else
        sum = rem(n,10) + digit_sum(fix(n/10));
    end
end