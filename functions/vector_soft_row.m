function Y = vector_soft_row(X,tau)
%  computes the vector soft columnwise


NU = sqrt(sum(X.^2,2));
% disp(size(NU))
A = max(0, NU-tau);
% aa=repmat((A./(A+tau)),1,size(X,2));
% disp(size(A));
% disp(size(X));
Y = repmat((A./(A+tau)),1,size(X,2)).* X;

end
