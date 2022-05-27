function array = c_kTest(kmax, wordSize, N)
    ckTotal = zeros(kmax); ckArray = zeros(kmax); cksqrtk = zeros(kmax);
    for k = 1:kmax
        for run = 1:N
            ckTotal(k) = ckTotal(k) + RandomSubsequenceTest(k,wordSize);
        end
    end
    ckArray = ckTotal/N; %Scale to get an array of c_k averaged over N runs
    for i = 1:kmax
        cksqrtk(i) = ckArray(i) * sqrt(i); %Use estimate for c_k to calculate c_k*sqrt(k)
    end
    plot(cksqrtk);
    array = cksqrtk;
end