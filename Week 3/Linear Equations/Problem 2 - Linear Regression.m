function [a b] = lin_reg(x, y)
    lenx = size(x,2);
    leny = size(y,2);
    x = [x; ones(1, lenx)].';
    y = reshape(y, [leny, 1]);
    fit = x\y;
    a = fit(1);
    b = fit(2);
end