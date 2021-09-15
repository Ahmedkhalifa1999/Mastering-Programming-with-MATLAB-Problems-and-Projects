function db = name_value_pairs(varargin)
    db = {};
    if (rem(length(varargin),2) == 0)
        ii = 1;
        jj = 1;
        while ii < length(varargin)
            if ~ischar(varargin{ii})
                db = {};
                break;
            end
            db{jj,1} = varargin{ii};
            db{jj,2} = varargin{ii+1};
            ii = ii + 2;
            jj = jj + 1;
        end
    end
end