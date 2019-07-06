function [acc_mean, acc_std] = LDA_loso_test(X,y)
% [ACC_MEAN, ACC_STD] = LDA_LOSO_TEST(X,y) testing of LDA classifier using
% leave one subject out (LOSO) strategy
% X - data set (in columns)

n = size(X,1);  % number of objects

%% LOSO cycle
acc = zeros(1,n);
for i=1:n
    train_inds = setdiff(1:n,i);
    X_train = X(train_inds,:);
    y_train = y(train_inds);
    
    X_pos = X_train(y_train==1,:);
    X_neg = X_train(y_train==-1,:);
    
    [w, bias] = fisher_classifer_train(X_neg, X_pos);
    label_i = fisher_classification(w, bias, X(i,:));
    acc(i) = (label_i==y(i));           
end

%% Accuracy estimation
acc_mean = mean(acc);
acc_std = sqrt(acc_mean*(1-acc_mean)/n);

end
