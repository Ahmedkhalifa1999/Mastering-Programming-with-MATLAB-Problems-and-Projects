function max = recursive_max(n)
    if (length(n) == 1)
        max = n;
    else
        array_max = recursive_max(n(2:end));
        if (array_max > n(1))
            max = array_max;
        else
            max = n(1);
        end
    end
end