function ckPlot2(k,nmax)
    %Plots c_k as n increases from 2 to nmax, with alphabet size k
    cArray = zeros;
    for n = 2:nmax
        a = randi([1 k],1,n);
        b = randi([1 k],1,n);
        LNN = LongestSubsequence(a,b);
        cArray(n-1) = LNN/n;
    end
    plot(cArray);
end