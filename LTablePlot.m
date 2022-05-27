function LTable = LTablePlot(k,n)
    %       ___ ___ ___
    %  b(n)|___|___|___|
    %  ... |___|___|___|
    %  b(1)|___|___|___|
    %      a(1) ... a(m)
    %  A match contains a 1; a 0 otherwise.
    
    %Generate sequences
    a = randi([1 k],1,n);
    b = randi([1 k],1,n);
    %Construct grid of matches
    matchGrid = zeros(n,n);
    for x = (1:n)
        for y = (1:n)
            if a(x) == b(y)
                matchGrid(x,y) = 1;
            end
        end
    end
    %Construct grid of L-values
    LGrid = zeros(n,n);
    %Initialise the first row
    for x = (1:n)
        if a(x)==b(1)
            LGrid(x,1) = 1;
            break;
        end
    end
    if x < n
        for k = (x:n)
            LGrid(k,1) = 1;
        end
    end
    %Initialise the first column
    for x = (1:n)
        if b(x)==a(1)
            LGrid(1,x) = 1;
            break;
        end
    end
    if x < n
        for k = (x:n)
            LGrid(1,k) = 1;
        end
    end
    %Construct the rest of the grid row-by-row by recursion
    %NOTE - this could work just by calling L(m,n) and ensuring each square
    %is filled in the function?  However, for large grids the program may
    %crash due to many recursive calls.
    for y = (2:n)
        for x = (2:n)
            LGrid(x,y) = L(x,y,matchGrid,LGrid);
        end
    end
    %New bit
    LPlot = zeros(n,n);
    for i=1:(n-1)
        LPlot(i) = LGrid(i,n-i)/n;
    end
    plot(LPlot);
    LTable = LGrid;
    %
end
    