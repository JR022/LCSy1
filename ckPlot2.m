function ckPlot2(k,n)
    cArray = zeros;
    for i=1:n
        cArray(i) = RandomSubsequenceTest(k,n)/n;
    end
    plot(cArray);
end