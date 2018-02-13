function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);
k =size(x1);
% You need to return the following variables correctly.
sim = 0;
for i=1:k
    sim = sim + ((x1(i)-x2(i)).^2);
end
sim = sim*-1;
sim = sim/ (2* (sigma.^2));
sim = exp(sim);
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%






% =============================================================
    
end
