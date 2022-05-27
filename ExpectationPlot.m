%Plots E(L_{n,n}), calculated with m iterations, for k=2:kmax with
%sequence length n.
function resultArray = ExpectationPlot(kmax, m, n)
    eArray = zeros;
    for k=2:kmax
        eArray(k-1) = ExpectedL(k,m,n);
    end
    plot(eArray);
    resultArray = eArray;
end