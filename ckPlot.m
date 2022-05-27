function ckPlot(kmax,n)
    %Plots c_k as k increases from 2 to kmax, with sequence length n
    cArray = zeros;
    for k = 2:kmax
        a = randi([1 k],1,n);
        b = randi([1 k],1,n);
        LNN = LongestSubsequence(a,b);
        cArray(k-1) = LNN/n;
    end
    plot(cArray);
end