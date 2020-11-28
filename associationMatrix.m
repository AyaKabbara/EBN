function [A] = associationMatrix(S)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

N=size(S,1);
M=size(S,2);
A=zeros(N,N);

for i=1:M
    for j=1:N-1
        for k=j+1:N
            if(S(j,i)==S(k,i))
                A(k,j)=A(k,j)+1;
                A(j,k)=A(k,j);
            end
        end
    end 
end

A=A/M;


end

