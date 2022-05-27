function residual = RandomSubsequenceCheck(k,n)
    %k is the alphabet size, n is the word length
    a = randi([1 k],1,n);
    %disp(a);
    b = randi([1 k],1,n);
    %disp(b);
    residual = abs(AltLongestSubsequence(a,b) - LongestSubsequence(a,b)); %Should be 0
end