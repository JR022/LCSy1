%Calculates E(L{n,n}), with alphabet size k , m iterations, and sequence length n. 
function e = ExpectedL(k,m,n)
    total=0;
    for i=1:m
        total = total + RandomSubsequenceTest(k,n);
    end
    e = total/m;
end