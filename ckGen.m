%Only returns an array of c_k as k = 2:kmax with word size n
function ckArray = ckGen(kmax,n)
    cArray = zeros;
    for i=2:kmax
        cArray(i-1) = AltRandomSubsequenceTest(i,n)/n;
    end
    ckArray = cArray;
end