function v = reversal(v)
    if length(v) > 1
        mid = floor(length(v)/2);
        v = [reversal(v(mid+1:end)) reversal(v(1:mid))];
    end
end