function rev = reversal(v)
    if (length(v) > 1)
        rev = [v(end) reversal(v(2:end-1)) v(1)];
    else
        rev = v;
    end
end