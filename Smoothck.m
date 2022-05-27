%Generates a value for c_k averaged over 'runs' runs
function ckArray = Smoothck(k, n, runs)
    cArray = zeros;
    for i = 1:runs
        cArray = cArray + ckGen(k,n);
    end
    ckArray = cArray/runs;
end