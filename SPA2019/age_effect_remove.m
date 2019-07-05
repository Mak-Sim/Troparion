function [data_p, data_h] = age_effect_remove(data_p, data_h)
%AGE_EFFECT_REMOVE Regressed out age using data of the controls.
%   The correction applied is to all samples
% data_p -- feature vectors of pathology class
% data_h -- feature vector of normal class

% 1. Preparing data
m = length(data_h);
n = length(data_h(1).feature_vec);
ages = zeros(1,m);
features = zeros(n,m);
for M=1:m
    ages(M) = data_h(M).age;
    features(:,M) = data_h(M).feature_vec;
end

% 2. Finding regression coefficients
age_regression = zeros(n,2);
for N=1:n
    A = [ages' ones(m,1)];
    b = features(N,:)';
    x = lsqr(A,b);
    % infographics
%     plot(A(:,1),b,'o')
%     hold on; plot(A(:,1),A(:,1)*x(1)+x(2));
   age_regression(N,:) = x';
end

end

