function SmoothckPlot(kmax,n,runs)
    %Plots c_k as k increases from 2 to kmax, with sequence length n,
    %averaged over 'runs' runs
    ckArray = zeros;
    parfor i=1:runs
        ckArray = ckArray + ckGen(kmax,n);
    end
    plot(ckArray/runs);
end