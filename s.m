function stirling = s(t,j)
    if t == 1
        if j == 1
            stirling=1;
        else
            stirling=0;
        end
    elseif t == 2
        if j == 1
            stirling=-1;
        elseif j == 2
            stirling=1;
        else
            stirling=0;
        end
    elseif t == 3
        if j == 1
            stirling=2;
        elseif j == 2
            stirling=-3;
        elseif j == 3
            stirling=1;
        end
    end
end