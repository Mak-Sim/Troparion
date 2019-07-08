function [labels] = KNN_classification(X_pos,X_neg,inSigma, X_test)
%KNN_CLASSIFICATION We assume that |X_pos|<|X_neg|.
%   X_test -- samples in rows.

n_test = size(X_test,1);
n_pos = size(X_pos,1);
n_neg = size(X_neg,1);
% n_min = round(min(n_pos, n_neg)/2);
n_min = 3;

labels = zeros(1,n_test);

for i=1:n_test
    x_test = X_test(i,:)';
    dist_pos = zeros(1,n_pos);
    for j=1:n_pos
        x_pos = X_pos(j,:)';
        dist_pos(j) = sqrt((x_test-x_pos)'*inSigma*(x_test-x_pos));
    end
    dist_neg = zeros(1,n_neg);
    for j=1:n_neg
        x_neg = X_neg(j,:)';
        dist_neg(j) = sqrt((x_test-x_neg)'*inSigma*(x_test-x_neg));
    end
    
    dist_pos = sort(dist_pos,'ascend');
    dist_pos = dist_pos(1:n_min);
    
    dist_neg = sort(dist_neg,'ascend');
    dist_neg = dist_neg(1:n_min);
    
    % Decision
    kNN_response = sum(ones(1,n_min)./dist_pos + (-ones(1,n_min)./dist_neg));
    labels(i) = sign(kNN_response);
end
end

