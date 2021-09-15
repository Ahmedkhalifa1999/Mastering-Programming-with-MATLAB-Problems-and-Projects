function res = palindrome(s)
    if(length(s) <= 1)
        res = true;
    else
        res = (s(1) == s(end)) & palindrome(s(2:end-1));
    end
end