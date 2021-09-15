function success = grader(fun1, fun2, varargin)
    success = true;
    for ii = 1:length(varargin)
        test = varargin{ii};
        if ~isequal(fun1(test), fun2(test))
            success = false;
            return;
        end
    end
end