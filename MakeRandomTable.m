%Generates two random k-ary sequences of length n and returns the
%L-value table.
function lTable = MakeRandomTable(k,n)
    a = randi([1 k],1,n);
    b = randi([1 k],1,n);
    lTable = ConstructLTable(a,b);
end