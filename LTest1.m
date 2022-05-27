function LTest1(k,n)
    a = randi([1 k],1,n);
    b = randi([1 k],1,n);
    c = cat(1,a,b);
    lTable = ConstructLTable(c,c);
    LPlot = zeros;
    for i=1:(n-1)
        LPlot(i) = lTable(i,n-i)/n;
    end
    plot(LPlot);
end