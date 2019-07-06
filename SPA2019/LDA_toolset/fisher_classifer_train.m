function [w, threshold] = fisher_classifer_train(norm_base, pathology_base)

n_base = norm_base';
p_base = pathology_base';

nh = size(n_base,2);
ni = size(p_base,2);

mh = mean(n_base,2);
mi = mean(p_base,2);

Sw=0; % within class variances
for i=1:nh
    Sw = Sw + (n_base(:,i)-mh)*(n_base(:,i)-mh)';
end

for i=1:ni
    Sw = Sw + (p_base(:,i)-mi)*(p_base(:,i)-mi)';
end
Sb = (mh-mi)*(mh-mi)'; % between class
[V2,D] = eig(Sb,Sw); % linear discriminant analysis
[~,ind] = max(abs(diag(D)));
w_denorm = V2(:,ind); 
w = w_denorm/norm(w_denorm,2);
v_h = w'*n_base; v_i = w'*p_base;
% % result = [v_h, v_i];


if mean(v_h)>mean(v_i)
    w = -w;
    v_h = -v_h;
    v_i = -v_i;
end
% normal < threshold < pathology
[sort_h, ind_h] = sort(v_h);
sort_i = sort(v_i);

t1 = length(sort_h);
t2 = 1;
while (sort_h(t1)>sort_i(t2))&&(length(sort_h)>t1)&&(length(sort_i)>t2)
    t1 = t1-1;
    t2 = t2+1;
end
threshold = (sort_h(t1)+sort_i(t2))/2;

% Convenience:  "1" - pathology cace
%              "-1" - health case

h_mark = sign(w'*n_base(:,ind_h(1)) - threshold);
% checking: whether correction is needed 
if h_mark == 1
    w = -w;
    threshold = -threshold;
end

end

