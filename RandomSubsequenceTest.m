%Generates two random k-ary sequences and find the length of the longest
%common subsequence.
function lengthOfLongestSubsequence = RandomSubsequenceTest(k,n)
    %k is the alphabet size, n is the word length
    a = randi([1 k],1,n);
    %disp(a);
    b = randi([1 k],1,n);
    %disp(b);
    lengthOfLongestSubsequence = LongestSubsequence(a,b);
end