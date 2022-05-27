function cksqrtk = c_kSingleTest(k, wordSize, N)
    ckTotal = 0;
    for runs = 1:N
        ckTotal = ckTotal + RandomSubsequenceTest(k,wordSize);
    end
    scaledCkTotal = ckTotal/N;
    cksqrtk = scaledCkTotal * sqrt(k);
end