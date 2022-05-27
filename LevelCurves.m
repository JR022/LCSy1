%Produces a level curve/contour plot of the L-table for two randomly
%generated k-ary sequences of length n
function LevelCurves(k,n)
    a = randi([1 k],1,n);
    b = randi([1 k],1,n);
    LTable = ConstructLTable(a,b);
    contour(LTable);
    return;
end