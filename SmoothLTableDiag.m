function lDiag = SmoothLTableDiag(k,n,N)
%Plots L_{n,n}/n for all values on the diagonal, from top left to bottom
%right, averaged over N iterations.
    lArray = zeros;
    for run = 1:(N-1)
        lArray = lArray + LTableDiag(k,n);
    end
    scaled = lArray/N;
    plot(scaled);
    lDiag = scaled;
end