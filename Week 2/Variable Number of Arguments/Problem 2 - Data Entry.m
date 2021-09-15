function db = voters(database, varargin)
    ii = 1;
    if ~rem(length(varargin), 2) == 0
        db = database;
        return
    end
    while ii < length(varargin)
        if ~((ischar(varargin{ii}) | isstring(varargin{ii})) & isnumeric(varargin{ii+1}) & varargin{ii+1} == fix(varargin{ii+1}))
            db = database;
            return
        end
        ii = ii + 2;
    end
    ii = 1;
    db = database;
    while ii < length(varargin)
        s.Name = string(varargin{ii});
        s.ID = varargin{ii+1};
        db = [db s];
        ii =ii + 2;
    end
end
        