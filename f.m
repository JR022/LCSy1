function f = f(n)
    syms k
    func = 0;
    temp = 0;
    for j=1:(2*n-1)
        for t = 1:(2*n-1)
            for v = 1:n
                temp = temp + v*N(2,v,t)*k^(j-2*n);
            end
            func = func + s(t,j)*temp;
            temp = 0;
        end
    end
    f = func;
end