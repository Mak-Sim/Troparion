clear all;

addpath('LDA_toolset');
addpath('KNN_toolset');

% Preparing data set
type = 'trop';  % features obtained using Troparion toolset
% type = 'praat'; % features obtained using PRAAT system
omit_PVI = false;

if (strcmpi(type,'trop'))
    load('dataset_trop_h.mat');
    load('dataset_trop_p.mat');
    dataset_h = dataset_trop_h;
    dataset_p = dataset_trop_p;
elseif (strcmpi(type,'praat'))
    Dataset_praat;
    dataset_h = dataset_praat_h;
    dataset_p = dataset_praat_p;
    [dataset_p, dataset_h] = age_effect_remove(dataset_p, dataset_h);
else
    error('Unknown source type.');
end

N_h = length(dataset_h);
N_p = length(dataset_p);
m = length(dataset_h(1).feature_vec);

if (omit_PVI)&&(strcmpi(type,'trop'))
    m = m-1;   
end

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
% num_cv_iter = 40;
K = 7;  % number of folds

acc_mean = zeros(1,N_var);
acc_std  = zeros(1,N_var);
sens_mean = zeros(1,N_var);
sens_std  = zeros(1,N_var);
spec_mean = zeros(1,N_var);
spec_std  = zeros(1,N_var);
avg_rec = zeros(1,N_var);

for N=1:N_var
    best_feature_ind = find(dec2bin(N,m)=='1');
    [acc_mean(N),acc_std(N), sens_mean(N),sens_std(N), spec_mean(N),spec_std(N)] = ...
        kNN_k_fold_CV(X(:,best_feature_ind),y,K);   
    avg_rec(N) = (sens_mean(N)+spec_mean(N))/2;
    fprintf('Number of featues %d/%d \n',N,N_var);
end

%% Info graphic
errorbar(1:N_var,acc_mean*100,acc_std*100,'-o','LineWidth',1.5);
xlabel('Iteration');
ylabel('Performance (%)');
legend('Full search');
grid on;

