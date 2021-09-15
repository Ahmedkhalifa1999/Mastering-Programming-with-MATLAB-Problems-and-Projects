function output = edgy(input)
    rows = size(input,1)-2;
    columns = size(input,2)-2;
    dinput = double(input);
    for ii = 1:rows
        for jj = 1:columns
            Sx = -dinput(ii,jj) - 2 * dinput(ii+1,jj) - dinput(ii+2,jj) + dinput(ii,jj+2) + 2 * dinput(ii+1,jj+2) + dinput(ii+2,jj+2);
            Sy = dinput(ii,jj) + 2 * dinput(ii,jj+1) + dinput(ii,jj+2) - dinput(ii+2,jj) - 2 * dinput(ii+2,jj+1) - dinput(ii+2,jj+2);
            output(ii,jj) = uint8(sqrt((Sx^2) + (Sy^2)));
        end
    end
end