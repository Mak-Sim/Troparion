clear all;

addpath('../SPA2019\LDA_toolset');
addpath('../SPA2019\KNN_toolset');

% Preparing data set
type = 'trop';  % features obtained using Troparion toolset

load('dataset_trop_ext_h.mat');
load('dataset_trop_ext_p.mat');

dataset_p = dataset_trop_p;
dataset_h = dataset_trop_h;


% [dataset_p, dataset_h] = age_effect_remove(dataset_trop_p, dataset_trop_h);

N_h = length(dataset_h);
N_p = length(dataset_p);
m = length(dataset_h(1).feature_vec);

feature_name(1)={'J_loc'};
feature_name(2)={'J_rap'};
feature_name(3)={'J_ppq5'};
feature_name(4)={'J_ppq55'};
feature_name(5)={'S_loc'};
feature_name(6)={'S_apq3'};
feature_name(7)={'S_apq5'};
feature_name(8)={'S_apq11'};
feature_name(9)={'S_apq55'};
feature_name(10)={'PVI'};
feature_name(11)={'DFP'};
feature_name(12)={'PFR'};
feature_name(13)={'SD_{f_o}'};
feature_name(14)={'PPE'};


X = zeros(N_h+N_p,m);
y = zeros(N_h+N_p,1);
% Relabeling and copy
for i=1:N_p    
    X(i,:) = dataset_p(i).feature_vec(1:m);    
    y(i) = 1;
end

N = N_p;
for i=1:N_h
    N = N + 1;
    X(N,:) = dataset_h(i).feature_vec(1:m);
    y(N) = -1;    
end


%% Full search
N_var = 2^m;
num_cv_iter = 40;
K = 6;  % number of folds

acc_mean = zeros(1,N_var);
acc_std  = zeros(1,N_var);
sens_mean = zeros(1,N_var);
sens_std  = zeros(1,N_var);
spec_mean = zeros(1,N_var);
spec_std  = zeros(1,N_var);
avg_rec = zeros(1,N_var);

for N=1:N_var
    feature_use = find(dec2bin(N,m)=='1');
    [acc_mean(N),acc_std(N), sens_mean(N),sens_std(N), spec_mean(N),spec_std(N)] = ...
        kNN_k_fold_CV(X(:,feature_use),y,K,num_cv_iter);   
    avg_rec(N) = (sens_mean(N)+spec_mean(N))/2;
    
    result_kNN(N).feature  = feature_use;
    result_kNN(N).acc_mean = acc_mean(N);
    result_kNN(N).acc_std  = acc_std(N);
    result_kNN(N).sens_mean= sens_mean(N);
    result_kNN(N).sens_std = sens_std(N);
    result_kNN(N).spec_mean= spec_mean(N);
    result_kNN(N).spec_std = spec_std(N);
    result_kNN(N).avg_rec  = avg_rec(N);
    
    fprintf('Number of featues %d/%d \n',N,N_var);
end

save('result_kNN_apnn.mat','result_kNN');


%% Info graphic
errorbar(1:N_var,acc_mean*100,acc_std*100,'-o','LineWidth',1.5);
xlabel('Iteration');
ylabel('Performance (%)');
legend('Full search');
grid on;

[~,ind]=sort(avg_rec,'descend');
fprintf('Gold \n');
feature_use = find(dec2bin(ind(1),m)=='1');
disp(feature_name(feature_use));
fprintf('Avg_rec: %2.1f \n',avg_rec(ind(1))*100);
fprintf('Accuracy: %2.1f+/-%2.1f \n',acc_mean(ind(1))*100,acc_std(ind(1))*100);
fprintf('Sensitivity: %2.1f+/-%2.1f \n',sens_mean(ind(1))*100,sens_std(ind(1))*100);
fprintf('Specificity: %2.1f+/-%2.1f \n',spec_mean(ind(1))*100,spec_std(ind(1))*100);

fprintf('Silver \n');
feature_use = find(dec2bin(ind(2),m)=='1');
disp(feature_name(feature_use));
fprintf('Avg_rec: %2.1f \n',avg_rec(ind(2))*100);
fprintf('Accuracy: %2.1f+/-%2.1f \n',acc_mean(ind(2))*100,acc_std(ind(2))*100);
fprintf('Sensitivity: %2.1f+/-%2.1f \n',sens_mean(ind(2))*100,sens_std(ind(2))*100);
fprintf('Specificity: %2.1f+/-%2.1f \n',spec_mean(ind(2))*100,spec_std(ind(2))*100);

fprintf('Bronze \n');
feature_use = find(dec2bin(ind(3),m)=='1');
disp(feature_name(feature_use));
fprintf('Avg_rec: %2.1f \n',avg_rec(ind(3))*100);
fprintf('Accuracy: %2.1f+/-%2.1f \n',acc_mean(ind(3))*100,acc_std(ind(3))*100);
fprintf('Sensitivity: %2.1f+/-%2.1f \n',sens_mean(ind(3))*100,sens_std(ind(3))*100);
fprintf('Specificity: %2.1f+/-%2.1f \n',spec_mean(ind(3))*100,spec_std(ind(3))*100);
