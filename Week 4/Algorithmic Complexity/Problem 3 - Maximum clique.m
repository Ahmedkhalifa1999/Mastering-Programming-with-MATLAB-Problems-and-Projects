function clique = max_clique(graph)
    max_clq = [1];
    for ii = 1:length(graph)
        clq = [ii];
        for jj = ii+1:length(graph)
            if check_clique(clq, jj, graph)
                clq = [clq jj];
                if length(clq) > length(max_clq)
                    max_clq = clq
                end
            end
        end
    end
    clique = max_clq;
end
        
function ok = check_clique(clq,node,graph)                      % adding node to clq still a clique?
    ok = false;
    for ii = 1:length(clq)                                      % for every current member
        if isempty(find(clq(ii) == graph{node})) || ...         % the member must be on the follows list of the new guy
                isempty(find(node == graph{clq(ii)}))           % the new guy must be on the follows list of the member
            return;
        end
    end
    ok = true;
end