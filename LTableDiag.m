function lDiag = LTableDiag(k,n)
%Creates an array of L_{n,n}/n for all values on the diagonal, from top left to bottom right.
    lArray = zeros;
    table = MakeRandomTable(k,n);
    for i = 1:(n-1)
        lArray(i) = table(i,n-i)/n;
    end
    lDiag = lArray;
end
    