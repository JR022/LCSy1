%Builds a table of L-values averaged over r runs and produces a contour
%plot
function AveragedTable = SmoothLevelCurve(k,n,r)
    table = zeros(n,n);
    parfor i = 1:r
        table = table + MakeRandomTable(k,n);
    end
    table = table/r;
    contour(table);
    AveragedTable = table;
end