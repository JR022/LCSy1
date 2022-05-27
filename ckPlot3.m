%Returns and plots an array of c_k as k = 1:kmax with word size n
function ckArray = ckPlot3(kmax,n)
    cArray = zeros;
    for i=1:kmax
        cArray(i) = RandomSubsequenceTest(i,n)/n;
    end
    ckArray = cArray;
    plot(cArray);
end