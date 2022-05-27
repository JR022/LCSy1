function CalcMeanAndVariance(k,n,sampleSize)
    skn2Total = 0;
    vabnArray = zeros;
    tic
    for i = 1:sampleSize
        %Generate two sequences of length n with alphabet size k
        a = randi([1 k],1,n);
        b = randi([1 k],1,n);
        %Calculate v(a,b)/n and add to the array
        vabnArray(i) = double(LongestSubsequence(a,b))/n;
    end
    toc
    %Calculate m_{k,n}: the average value of n^{-1}v(a,b)
    mkn = (sum(vabnArray))/sampleSize;
    %Use this to calculate s_{k,n}^2
    for i = 1:sampleSize
        skn2Total = skn2Total + (vabnArray(i) - mkn)^2;
    end
    skn2 = skn2Total/(sampleSize-1);
    fprintf("%d&%f&%f&%d\\\\\n",n,mkn,sqrt(skn2),sampleSize); %This line outputs the data nicely in LaTeX
end