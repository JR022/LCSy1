function CalcMeanAndVariance2(k,n,sampleSize)
    vkn2Total = 0;
    vabArray = zeros;
    tic
    for i = 1:sampleSize
        %Generate two sequences of length n with alphabet size k
        a = randi([1 k],1,n);
        b = randi([1 k],1,n);
        %Calculate v(a,b) and add to the array
        vabArray(i) = LongestSubsequence(a,b);
    end
    toc
    %Calculate the average value of v(a,b)
    mean = double((sum(vabArray)))/sampleSize;
    %Use this to calculate \sigma_{k,n}^2
    for i = 1:sampleSize
        vkn2Total = vkn2Total + (vabArray(i) - mean)^2;
    end
    vkn2 = vkn2Total/(sampleSize-1);
    fprintf("%d&%f&%f&%d\\\\\n",n,mean,vkn2,sampleSize); %This line outputs the data nicely in LaTeX
end