function [X_pos,X_neg,inSigma] = KNN_train(X,y)
%KNN_train training kNN classifier with Mahalanodius distanse
%   X -- input data (samples in rows)
%   y -- labels
%   X_pos -- positive samples
%   X_neg -- negative samples
%   inSigma -- inverse of covariance matrix (for Mahalanobius distanse)

inSigma = inv(cov(X));
X_pos = X(y==1,:);
X_neg = X(y==-1,:);
end

