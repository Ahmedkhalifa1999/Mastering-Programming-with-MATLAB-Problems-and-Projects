function res = fibor(n)
    if (n == 2)
        res = [1 1];
    elseif (n == 1)
        res = 1;
    else
        ser = fibor(n-1);
        res = [ser ser(end-1)+ser(end)];
    end
end